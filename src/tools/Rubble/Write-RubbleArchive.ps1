[System.Reflection.Assembly]::LoadFrom("$PSScriptRoot\SharpZipLib\lib\20\ICSharpCode.SharpZipLib.dll") | Out-Null

function Write-RubbleArchive
{
  [CmdletBinding()]
  Param(
      [Parameter(Mandatory=$true)]
      [string] $Path,
      [Parameter(Mandatory=$true)]
      [string] $OutputLocation
  )
  Process
  {
    $zip = New-Object ICSharpCode.SharpZipLib.Zip.FastZip
    $zip.CreateZip($OutputLocation,$Path,$true, $null)
  }
}
