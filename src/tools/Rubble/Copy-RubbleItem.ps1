function Copy-RubbleItem
{
  [CmdletBinding()]
  Param(
      [Parameter(Mandatory=$true)]
      [string] $Path,
      [Parameter(Mandatory=$true)]
      [string] $Destination,
      [String[]] $Pattern
  )
  Process
  {
    $Path = $Path.TrimEnd("\") + "\"

    if($Pattern) {
      $files = @()
      foreach($file in (ls $Path -Recurse )) {
        $relativePath = $file.FullName -replace  ([Regex]::Escape($Path)), ""
        Write-Verbose $relativePath
        foreach($filter in $Pattern) {
          if($relativePath -like $filter) {
            $files += $relativePath
            break;
          }
        }
      }
    }
    if($files) {
      Write-Verbose "Found files to copy: $([string]::Join(', ', $files))"
    }
    else {
      Write-Verbose "Copy all files"
    }

    if($files) {
      $files | % {
        $target = (Join-Path $Destination $_)
        $parent = Split-Path $target
        if(-not (Test-Path $parent)) {
          mkdir $parent | Out-Null
        }
        cp (Join-Path $Path $_) $target
      }
    }
    else {
      cp $Path\* $Destination -Recurse
    }
  }
}
