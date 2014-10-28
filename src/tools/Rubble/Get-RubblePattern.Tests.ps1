$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\$sut"

Describe "Get rubble pattern" {
  Context "replacements" {
    $pattern = Get-RubblePattern "Demo;;Demo2" @{"Demo"= "Replaced"; "Demo2"= "Replaced2"}
    It "Should have removed entries" {
      $pattern.Count | Should Be 2
    }
    It "Should have replaced demo" {
      $pattern[0] | Should Be "Replaced"
    }

    It "Should have replaced demo2" {
      $pattern[1] | Should Be "Replaced2"
    }
  }
}
