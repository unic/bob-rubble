

# Remove-RubbleItem

Removes all subfolders in a specific folder which doesn't match any of the specified patterns.
## Syntax

    Remove-RubbleItem [-Folder] <String> [-Pattern] <String[]> [-Files] [<CommonParameters>]


## Description

Removes all subfolders in a specific folder which doesn't match any of the specified patterns.





## Parameters

    
    -Folder <String>
_The folder where the subfolders should be deleted._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 1 | true |  | false | false |


----

    
    
    -Pattern <String[]>
_The patterns which should **not** be deleted._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| 2 | true |  | false | false |


----

    
    
    -Files <SwitchParameter>
_If true the files which are directly in the root will also be deleted._

| Position | Required | Default value | Accept pipeline input | Accept wildchard characters |
| -------- | -------- | ------------- | --------------------- | --------------------------- |
| named | false | False | false | false |


----

    

## Examples

### -------------------------- EXAMPLE 1 --------------------------
    Remove-RubbleItem -Folder D:\dummy -Pattern "Do\Not\*Delete"































