

# Expand-RubbleArchive

Extracts a ZIP file.
## Syntax

    Expand-RubbleArchive [-Path] <String> [-OutputLocation] <String> [<CommonParameters>]


## Description

Extracts a ZIP file.





## Parameters

    
    -Path <String>
_The path to the ZIP file._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -OutputLocation <String>
_The path where to extract the content of the file._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | true |  | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Expand-RubbleArchive -Path D:\temp\archive.zip -OutputLocation d:\temp\output































