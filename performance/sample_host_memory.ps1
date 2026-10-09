param([string]$Label = 'sample')
$memory = Get-CimInstance Win32_PerfFormattedData_PerfOS_Memory
$roles = @{}
Get-CimInstance Win32_Process -Filter "Name='msedge.exe'" | ForEach-Object {
    $role = 'browser'
    if ($_.CommandLine -match '--type=([a-z-]+)') { $role = $matches[1] }
    $roles[[int]$_.ProcessId] = $role
}
$processes = @(Get-CimInstance Win32_PerfFormattedData_PerfProc_Process | Where-Object Name -Like 'msedge*' |
    Sort-Object PrivateBytes -Descending | Select-Object -First 2 @{n='Role';e={$roles[[int]$_.IDProcess]}},PrivateBytes,WorkingSet)
$sample = [ordered]@{ label=$Label; timeUtc=[DateTime]::UtcNow.ToString('o');
    availableMB=$memory.AvailableMBytes; committedBytes=$memory.CommittedBytes;
    pagesInputPerSecond=$memory.PagesInputPersec; pageReadsPerSecond=$memory.PageReadsPersec;
    largestEdgeProcesses=$processes }
$sample | ConvertTo-Json -Depth 5 -Compress | Add-Content -LiteralPath (Join-Path $PSScriptRoot 'host-memory.jsonl')
$sample | ConvertTo-Json -Depth 5 -Compress
