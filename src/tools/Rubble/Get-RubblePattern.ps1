function Get-RubblePattern
{
  [CmdletBinding()]
  Param(
      [Parameter(Mandatory=$true)]
      [string] $Pattern,
      [System.Collections.Hashtable] $Replacement = @{}
  )
  Process
  {
        $patterns = $Pattern.Split(';') | % {$_.Trim()} | ? {$_ -ne ""}
        $patterns = $patterns | % {
          $item = $_
          foreach($key in $Replacement.Keys) {
            $item = $item -replace ([Regex]::Escape($key)), $Replacement[$key]
          }
          $item
        }
        $patterns
  }
}
