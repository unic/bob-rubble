

# Expand-RubbleArchive

Extracts a ZIP file.
## Syntax

    Expand-RubbleArchive [-Path] <String> [-OutputLocation] <String> [[-FileFilter] <String>] [<CommonParameters>]


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

    
    
    -FileFilter <String>
_Can be used to control what files should be extracted from the archive. If nothing is specified, all content will be extracted.
If the file filter is not a null string, it is interpreted as a list of one or more regular expressions which is tested against each file name.
The regular expressions can be separated using a semicolon._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 3 | false |  | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Expand-RubbleArchive -Path D:\temp\archive.zip -OutputLocation d:\temp\output -FileFilter "\.txt$""































