

# Add-RubbleArchiveFile

Adds a file or folder to a  ZIP file.
## Syntax

    Add-RubbleArchiveFile [-Path] <String> [-ArchivePath] <String> [[-RelativeToPath] <String>] [<CommonParameters>]


## Description

Adds a file or folder to a  ZIP file.
If the ZIP does not exist yet, it will be created.





## Parameters

    
    -Path <String>
_The path to add to the ZIP file._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -ArchivePath <String>
_The path to the ZIP file._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | true |  | false | false |


----

    
    
    -RelativeToPath <String>
_An optional parameter which specifies relative to which folder the items get added.
So when adding D:\a\b\c\d\e with RelativeToPath D:\a\b the path inside the ZIP file 
will be c\d\e
If its not specified the parent of $Path will be taken._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 3 | false |  | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Add-RubbleArchiveFile -Path D:\temp\example D:\temp\example.zip






























### -------------------------- EXAMPLE 2 --------------------------
    Add-RubbleArchiveFile -Path D:\temp\example\a\b -ArchvivePath D:\temp\example.zip -RelativeToPath D:\temp\example































