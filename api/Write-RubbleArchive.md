

# Write-RubbleArchive

Writes the content of a folder to a ZIP file.
## Syntax

    Write-RubbleArchive [-Path] <String> [-OutputLocation] <String> [<CommonParameters>]


## Description

Writes the content of a folder to a ZIP file.





## Parameters

    
    -Path <String>
_The folder to pack._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -OutputLocation <String>
_The ZIP file to write._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | true |  | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Write-RubbleArchive D:\example D:\example.zip































