<#
.SYNOPSIS
Extracts a ZIP file.

.DESCRIPTION
Extracts a ZIP file.

.PARAMETER Path
The path to the ZIP file.

.PARAMETER OutputLocation
The path where to extract the content of the file.

.PARAMETER FileFilter
If the file filter is not a null string, it is interpreted as a list of one or more regular expressions which is tested against each file name.

.EXAMPLE
Expand-RubbleArchive -Path D:\temp\archive.zip -OutputLocation d:\temp\output

#>
function Expand-RubbleArchive
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string] $Path,
        [Parameter(Mandatory=$true)]
        [string] $OutputLocation,
        [string] $FileFilter = $null
    )
    Process
    {
      $zip = New-Object ICSharpCode.SharpZipLib.Zip.FastZip
      $zip.ExtractZip($Path,$OutputLocation, $FileFilter)
    }
}
