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
    $Folder = $Folder.TrimEnd("\") + "\"

    $itemsToKeep = @()
    foreach($patt in $Pattern) {
      foreach($subFolder in (ls $Folder -recurse | Where {$_.PSIsContainer})) {
        if($subFolder.FullName.Replace($Folder, "") -like $patt) {
          $itemsToKeep += $subFolder.FullName
        }
      }
    }
    foreach($item in (ls "$Folder" -Recurse | Where {$_.PSIsContainer -eq $true})) {
      $delete = $true;
      foreach($keep in $itemsToKeep) {
        if($keep.StartsWith($item.FullName)) {
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
