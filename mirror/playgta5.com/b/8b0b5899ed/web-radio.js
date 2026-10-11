const STATIONS = Object.freeze([
	{ id: 'cachalot', name: 'CACHALOT', show: 'CACHALOT — ONDA ANDAR', song: 'cachalot #2016 [prod. onda andar].mp3', url: '/radio/audio/cachalot-onda-andar.69de7494e1a3419f.mp3', logo: '/radio/cachalot-onda-andar.b456927b52fe308b.svg' },
	{ id: 'type-london', name: 'TYPE LONDON', show: 'TYPE LONDON — ONDA ANDAR', song: 'ONDA ANDAR – type london.mp3', url: '/radio/audio/type-london-onda-andar.ab70604f1e86cefb.mp3', logo: '/radio/type-london-onda-andar.09d74e5eda7c3d2a.svg' },
]);
const RADIO_STYLE = `
.web-radio { box-sizing: border-box; width: min(450px, calc(100vw - 24px)); margin-top: 8px; padding: 13px; border: 1px solid #82765f; border-radius: 9px; background: rgba(16,17,17,.97); box-shadow: 0 8px 28px #000b; }
.web-radio button { color: inherit; font: inherit; cursor: pointer; }
.web-radio__head, .web-radio__controls { display: flex; align-items: center; justify-content: space-between; gap: 12px; }
.web-radio__head { margin: 0 0 10px; }
.web-radio__eyebrow { color: #d9aa61; font-size: 10px; font-weight: 800; letter-spacing: .18em; }
.web-radio h2 { margin: 1px 0 0; font-size: 19px; letter-spacing: .1em; }
.web-radio__close { width: 32px; height: 32px; border: 1px solid #514c42; border-radius: 5px; background: #191a19; font-size: 21px !important; }
.web-radio__stations { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 10px; }
.web-radio__station { display: flex; min-width: 0; flex-direction: column; padding: 7px; gap: 7px; border: 1px solid #514c42; border-radius: 7px; background: #20211f; text-align: left; }
.web-radio__station:hover, .web-radio__station:focus-visible { border-color: #cbb68e; }
.web-radio__station.is-active { border-color: #e6b65f; box-shadow: inset 0 0 0 1px #e6b65f; }
.web-radio__station img { display: block; width: 100%; aspect-ratio: 2 / 1; object-fit: contain; border-radius: 4px; }
.web-radio__name { overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-size: 11px; font-weight: 800; letter-spacing: .1em; }
.web-radio__status { min-height: 18px; margin: 10px 1px 8px; color: #d7c7a7; font-size: 11px; }
.web-radio__controls label { display: flex; align-items: center; gap: 9px; color: #bdb7ac; font-size: 10px; font-weight: 700; letter-spacing: .12em; }
.web-radio__volume { width: 118px; accent-color: #e6b65f; }
.web-radio__pause { padding: 6px 9px; border: 1px solid #514c42; border-radius: 4px; background: #20211f; font-size: 10px !important; font-weight: 800 !important; letter-spacing: .1em; }
#radio-shell button:focus-visible, #radio-shell input:focus-visible { outline: 2px solid #f0bd64; outline-offset: 2px; }
@media (max-width: 360px) { #radio-shell { right: 8px; } .web-radio { padding: 9px; } .web-radio__stations { gap: 6px; } .web-radio__station { padding: 5px; } .web-radio__volume { width: 88px; } }
`;

export function createRadioPlayback({ AudioCtor = Audio, stations = STATIONS, onState = () => {} } = {}) {
	const players = new Map();
	let active = null, token = 0, volume = 0.7, disposed = false;
	const state = (status, station = active, error = '') => onState({ status, station, error });
	for (const station of stations) {
		const audio = new AudioCtor();
		audio.preload = 'none';
		audio.crossOrigin = 'anonymous';
		audio.src = station.url;
		audio.volume = volume;
		audio.addEventListener('ended', () => {
			if (active === station.id) { active = null; token++; state('ended', station.id); }
		});
		audio.addEventListener('error', () => {
			if (active === station.id) state('error', station.id, 'This station could not be loaded. Check the connection and try again.');
		});
		players.set(station.id, audio);
	}
	return {
		async select(id) {
			if (disposed || !players.has(id)) return;
			const audio = players.get(id);
			if (active === id && !audio.paused) { audio.pause(); token++; state('paused', id); return; }
			if (active && active !== id) players.get(active).pause();
			active = id;
			const request = ++token;
			state('loading', id);
			try {
				await audio.play();
				if (disposed || request !== token) { audio.pause(); return; }
				state('playing', id);
			} catch (error) {
				if (request === token) state('error', id, error?.name === 'NotAllowedError' ? 'Click Play to allow audio in this browser.' : 'This station could not be loaded. Check the connection and try again.');
			}
		},
		pause() { if (active) players.get(active).pause(); token++; state('paused', active); },
		setVolume(value) {
			volume = Math.max(0, Math.min(1, Number(value) || 0));
			for (const audio of players.values()) audio.volume = volume;
		},
		get active() { return active; },
		dispose() {
			disposed = true; token++;
			for (const audio of players.values()) { audio.pause(); audio.removeAttribute('src'); audio.load(); }
			players.clear();
		},
	};
}

export function mountRadio(root, { onStation = () => {}, onVisibility = () => {}, audioBase = '/radio/audio', logoBase = '/radio' } = {}) {
	const stations = STATIONS.map(s => ({ ...s, url: audioBase + '/' + s.url.split('/').pop(), logo: logoBase + '/' + s.logo.split('/').pop() }));
	const style = document.createElement('style'); style.textContent = RADIO_STYLE; root.before(style);
	root.innerHTML = `
		<section class="web-radio" aria-label="Radio stations">
			<header class="web-radio__head"><div><span class="web-radio__eyebrow">ONDA ANDAR</span><h2>RADIO</h2></div><button class="web-radio__close" type="button" aria-label="Close radio">×</button></header>
			<div class="web-radio__stations" role="group" aria-label="Choose a station"></div>
			<div class="web-radio__status" role="status" aria-live="polite">Choose a station to play</div>
		<div class="web-radio__controls"><label>VOLUME <input class="web-radio__volume" aria-label="Radio volume" type="range" min="0" max="1" step="0.01" value="0.7"></label><button class="web-radio__pause" type="button">PAUSE</button></div>
		</section>`;
	const panel = root.querySelector('.web-radio');
	const list = root.querySelector('.web-radio__stations');
	const status = root.querySelector('.web-radio__status');
	const close = root.querySelector('.web-radio__close');
	const volume = root.querySelector('.web-radio__volume');
	const pause = root.querySelector('.web-radio__pause');
	const buttons = new Map();
	for (const station of stations) {
		const button = document.createElement('button');
		button.className = 'web-radio__station'; button.type = 'button'; button.dataset.station = station.id; button.setAttribute('aria-pressed', 'false');
		button.setAttribute('aria-label', 'Play ' + station.show);
		const img = document.createElement('img'); img.src = station.logo; img.alt = ''; img.width = 240; img.height = 120; img.decoding = 'async';
		const title = document.createElement('span'); title.className = 'web-radio__name'; title.textContent = station.name;
		button.append(img, title);
		button.addEventListener('click', () => playback.select(station.id));
		list.append(button); buttons.set(station.id, button);
	}
	const playback = createRadioPlayback({ stations, onState: ({ status: mode, station, error }) => {
		for (const [id, button] of buttons) {
			const selected = id === station && ['loading', 'playing', 'paused'].includes(mode);
			button.classList.toggle('is-active', selected);
			button.setAttribute('aria-pressed', String(id === station && mode === 'playing'));
		}
		const entry = stations.find(s => s.id === station);
		status.textContent = error || (mode === 'loading' ? 'Loading ' + entry?.name + '…' : mode === 'playing' ? 'NOW PLAYING · ' + entry?.show : mode === 'paused' ? 'PAUSED · ' + (entry?.show || '') : mode === 'ended' ? 'Track ended · choose a station to play again' : 'Choose a station to play');
		pause.textContent = 'PAUSE';
		onStation({ status: mode, station: entry || null });
	} });
	volume.addEventListener('input', () => playback.setVolume(volume.value));
	pause.addEventListener('click', () => playback.pause());
	close.addEventListener('click', () => { root.hidden = true; onVisibility(false); });
	addEventListener('pagehide', () => playback.pause(), { once: true });
	return { open() { root.hidden = false; onVisibility(true); }, close() { root.hidden = true; onVisibility(false); }, dispose() { playback.dispose(); style.remove(); root.replaceChildren(); } };
}
