"""Public staging is allowlisted, byte-preserving, bounded and self-consistent."""
import hashlib
import importlib.util
import json
from pathlib import Path
import tempfile
import tomllib

root = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('static_builder', root / 'cloudflare/build_static.py')
builder = importlib.util.module_from_spec(spec)
spec.loader.exec_module(builder)

with tempfile.TemporaryDirectory() as directory:
    base = Path(directory); site = base / 'stage'; packs = base / 'packs'; packs.mkdir()
    def write(path, body):
        path.parent.mkdir(parents=True, exist_ok=True); path.write_bytes(body); return path
    data = base / 'mirror/playgta5.com/data'
    manifest = {'version':'test-1','files':[['original.rpf',100]]}
    write(data / 'manifest.json', json.dumps(manifest).encode())
    write(data / 'bootset.json', b'[]'); write(data / 'bootset_low.json', b'[]')
    write(data / 'original.rpf', b'private-original')
    write(base / '.env', b'DO_NOT_PUBLISH'); write(base / 'savegames/save', b'DO_NOT_PUBLISH')
    script = b'console.log("client");'; fingerprint = hashlib.sha256(b'loader.js\0' + script).hexdigest()
    runtime = '/runtime/' + fingerprint
    write(site / ('site' + runtime + '/loader.js'), script)
    write(site / 'site/index.html', ('const RUNTIME = "'+runtime+'";\nconst DATA_BOOTSTRAP = \'\';').encode())
    body = b'compressed-original-pack'; digest = hashlib.sha256(body).hexdigest()
    pack = {'url':'/data/packs/'+digest+'.bin','sha256':digest,'encodedBytes':len(body)}
    write(packs / (digest + '.bin'), body)
    index = {'dataVersion':'test-1','fileFingerprint':hashlib.sha256(b'[["original.rpf",100]]').hexdigest(),
             'profiles':{'bootset.json':[pack],'bootset_low.json':[pack]}}
    index_body=json.dumps(index).encode(); index_hash=hashlib.sha256(index_body).hexdigest()
    write(packs / ('index-'+index_hash+'.json'), index_body)
    write(packs / 'delivery.json', json.dumps({'dataVersion':'test-1','index':'/data/packs/index-'+index_hash+'.json'}).encode())
    shaders = base / 'mirror/playgta5.com/b/8b0b5899ed/shaders'
    shader=b'unchanged shader bytes'; shader_name='pack0.'+hashlib.sha1(shader).hexdigest()[:8]+'.bin'
    write(shaders / shader_name, shader); write(shaders / 'index.json', b'{}')
    logo=b'<svg/>'; logo_name='station.'+hashlib.sha256(logo).hexdigest()[:16]+'.svg'
    write(site / 'site/radio' / logo_name, logo)
    audio=b'radio original'; audio_name='station.'+hashlib.sha256(audio).hexdigest()[:16]+'.mp3'
    write(site / 'site/radio/audio' / audio_name, audio)
    write(site / 'site/radio/credentials.api', b'DO_NOT_PUBLISH')
    originals={p:p.read_bytes() for p in base.rglob('*') if p.is_file()}
    output=base / 'out'
    result=builder.build(base,site,packs,output,base/'plan.json')
    assert result['files']==12
    bootstrap=output / result['bootstrap'].lstrip('/')
    frozen=json.loads(bootstrap.read_text())
    assert frozen['manifest']==manifest and frozen['index']==index
    assert hashlib.sha256(bootstrap.read_bytes()).hexdigest() in bootstrap.name
    assert result['bootstrap'] in (output/'index.html').read_text()
    assert not (output / 'data/original.rpf').exists()
    assert not (output / 'radio/audio' / audio_name).exists(),'audio remains on the range-capable R2 route'
    assert all(b'DO_NOT_PUBLISH' not in p.read_bytes() for p in output.rglob('*') if p.is_file())
    assert (output / ('data/packs/'+digest+'.bin')).read_bytes()==body
    assert (output / ('b/8b0b5899ed/shaders/'+shader_name)).read_bytes()==shader
    assert all(p.read_bytes()==before for p,before in originals.items())
    original_limit=builder.MAX_FILES
    builder.MAX_FILES=result['files']-1
    try: builder.build(base,site,packs,base/'limit-out',base/'limit-plan.json')
    except ValueError: pass
    else: raise AssertionError('generated bootstrap must count toward the file limit')
    assert not (base/'limit-out').exists()
    builder.MAX_FILES=original_limit
    assert 'Cross-Origin-Embedder-Policy: require-corp' in (output / '_headers').read_text()
    assert 'X-Game-Delivery: static' in (output / '_headers').read_text()
    try: builder.build(base,site,packs,output,base/'plan.json')
    except ValueError: pass
    else: raise AssertionError('existing stages must remain intact')
    write(packs / (digest+'.bin'), b'corrupted')
    try: builder.select(base,site,packs)
    except ValueError: pass
    else: raise AssertionError('corrupt pack accepted')
    write(packs / (digest+'.bin'), body)
    write(site / ('site'+runtime+'/loader.js'), b'changed client')
    try: builder.select(base,site,packs)
    except ValueError: pass
    else: raise AssertionError('runtime fingerprint not validated')
    write(site / ('site'+runtime+'/loader.js'), script)
    with (site / ('site'+runtime+'/loader.js')).open('wb') as file: file.truncate(builder.MAX_FILE+1)
    try: builder.select(base,site,packs)
    except ValueError: pass
    else: raise AssertionError('oversized static asset accepted')

config=tomllib.loads((root/'cloudflare/wrangler.toml').read_text())
assert config['assets']['run_worker_first'] is False
assert config['assets']['not_found_handling']=='none'
assert config['assets']['binding'] != config['r2_buckets'][0]['binding']
assert config['r2_buckets'][0]['bucket_name']=='gta5-browser'
print('PASS: static staging excludes originals/secrets/saves, retains exact bytes, validates hashes/limits, and bypasses Worker without exposing R2')
