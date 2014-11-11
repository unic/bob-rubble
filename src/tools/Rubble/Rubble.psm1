$PSScriptRoot = Split-Path  $script:MyInvocation.MyCommand.Path

function ResolvePath() {
  param($PackageId, $RelativePath)
  $paths = @("$PSScriptRoot\..\..\..\packages", "$PSScriptRoot\..\packages")
  foreach($packPath in $paths) {
    $path = Join-Path $packPath "$PackageId\$RelativePath"
    if((Test-Path $packPath) -and (Test-Path $path)) {
      Resolve-Path $path
      return
    }
  }
  Write-Error "No path found for $RelativePath in package $PackageId"
}


$zipDll = ResolvePath -PackageId "SharpZipLib" -RelativePath "lib\20\ICSharpCode.SharpZipLib.dll"
[System.Reflection.Assembly]::LoadFrom($zipDll.Path) | Out-Null

Get-ChildItem -Path $PSScriptRoot\*.ps1 -Exclude *.tests.ps1 | Foreach-Object{ . $_.FullName }
Export-ModuleMember -Function * -Alias *
