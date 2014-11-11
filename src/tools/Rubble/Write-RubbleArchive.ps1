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
