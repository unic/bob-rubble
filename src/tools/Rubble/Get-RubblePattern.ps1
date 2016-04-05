<#
.SYNOPSIS
Transforms a string with patterns and placeholders to an array of patterns

.DESCRIPTION
Transforms a string with multiple patterns and placeholders to an  array of patterens.
All patterns must be separated by a ';'.
Replacements are simple string replacements. Every occurence of a specific key
will be replaced by the specified value.


.PARAMETER Pattern
A semicolon separated list of patterns.

.PARAMETER Replacement
A hashtable of replacement. Every occurence of a specific key
will be replaced by the specified value.

.EXAMPLE
Get-RubblePattern "#role.config;env.config" @{"#role" = "myrole"; "env" = "myenv"}
This returns `@("myrole.config", "myenv.config")`
#>
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
        function combineNd($array, $n) {
            $subArray = @($array[$n])
            
            $return = New-Object System.Collections.ArrayList 

            for($i = 0; $i -lt $subArray.Count; $i++) {
                if(($n + 1) -eq $array.Count) {
                    $return.Add($subArray[$i]) | Out-Null
                   
                }
                else {
                    $value = @(combineNd $array ($n + 1))
                    $value | % {
                        $return.Add(@($subArray[$i], $_)) | Out-Null
                    }
                }
            }

             $return
        }

        $replacements =  & {
          foreach($key in $Replacement.Keys) {
              $value =  $Replacement[$key]
              if($value -is [system.array]) {
                  
                  $newValue = New-Object System.Collections.ArrayList 
                  $newValue.AddRange($value)
                  
                  $value = $newValue

                  # this returns every possible combination of $array
                  $combiner = "."
                    function combine($array, $i) {
                        $array[$i]
                        for($n = $i + 1; $n -lt $array.Count; $n++) {
                            combine $array $n | % {
                                $array[$i] + $combiner + $_
                            }
                        }
                    }

                    $values = @()
                    for($i = 0; $i -lt $value.Count; $i++) {
                        
                        $values += @((combine $value $i) | % {$_})
                    }

                    ,@($values)
              }
              else {
                  ,@($value)
              }
          }
        }

        $combinedReplacements   = New-Object System.Collections.ArrayList
        foreach($value in @(combineNd $replacements 0)) { 
            $combinedReplacements.Add(@($value | % {$_})) | Out-Null
        }


        $patterns = $Pattern.Split(';') | % {$_.Trim()} | ? {$_ -ne ""}
        $patterns | % {
            for($j = 0; $j -lt  $combinedReplacements.Count; $j++) {
                $item = $_
                $replacementValue = $combinedReplacements[$j]
                $i = 0
                foreach($key in $Replacement.Keys) {
                    $value = $replacementValue[$i]
                    $item = $item -replace ([Regex]::Escape($key)),$value
                    $i++;
                }
                $item
            }
        }
  }
}
