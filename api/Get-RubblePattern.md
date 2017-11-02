

# Get-RubblePattern

Transforms a string with patterns and placeholders to an array of patterns
## Syntax

    Get-RubblePattern [-Pattern] <String> [[-Replacement] <Hashtable>] [<CommonParameters>]


## Description

Transforms a string with multiple patterns and placeholders to an  array of patterens.
All patterns must be separated by a ';'.
Replacements are simple string replacements. Every occurence of a specific key
will be replaced by the specified value.





## Parameters

    
    -Pattern <String>
_A semicolon separated list of patterns._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -Replacement <Hashtable>
_A hashtable of replacement. Every occurence of a specific key
will be replaced by the specified value._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | false | @{} | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Get-RubblePattern "#role.config;env.config" @{"#role" = "myrole"; "env" = "myenv"}

This returns `@("myrole.config", "myenv.config")`





























