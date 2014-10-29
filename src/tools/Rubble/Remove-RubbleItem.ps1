function Remove-RubbleItem
{
  [CmdletBinding()]
  Param(
      [Parameter(Mandatory=$true)]
      [string] $Folder,
      [Parameter(Mandatory=$true)]
      [string[]] $Pattern
  )
  Process
  {
    $Path = $Path.TrimEnd("\") + "\"

    foreach($item in (ls "$Folder" -Recurse | Where {$_.PSIsContainer -eq $true})) {
      $relativePath = $item.FullName -replace  ([Regex]::Escape($Path)), ""
      $delete = $true;
      foreach($keep in $Pattern) {
        if($relativePath -repalce ($Folder, "") -like $keep) {
          $delete = $false
          break;
        }
      }

      if($delete -and (Test-Path $item.FullName)) {
          $item.FullName
          rm $item.FullName -Recurse
      }
    }
  }
}
