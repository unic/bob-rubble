

# Copy-RubbleItem

Copies items in a folder based on a pattern to a specific location.
## Syntax

    Copy-RubbleItem [-Path] <String> [-Destination] <String> [[-Pattern] <String[]>] [[-NoFilesAction] <String>] [<CommonParameters>]


## Description

Copies files from a specific location to another.
Optionally patterns can be specified, to only copy a subset of files.





## Parameters

    
    -Path <String>
_The path to copy from._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -Destination <String>
_The path to copy to._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | true |  | false | false |


----

    
    
    -Pattern <String[]>
_An array of patterns. If specified only files matching this patternm, will be copied.
A pattern must be in the format an PowerShell `-like` argument._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 3 | false |  | false | false |


----

    
    
    -NoFilesAction <String>

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 4 | false | CopyAll | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Copy-RubbleItem -Path D:\source -Destination d:\target  -Pattern *.config, "App_Config\*\*.example"































