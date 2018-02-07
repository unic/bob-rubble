# Rubble - API

##  Add-RubbleArchiveFile
Adds a file or folder to a  ZIP file.    
    
    Add-RubbleArchiveFile [-Path] <String> [-ArchivePath] <String> [[-RelativeToPath] <String>] [<CommonParameters>]


 [Read more](Add-RubbleArchiveFile.md)
##  Copy-RubbleItem
Copies items in a folder based on a pattern to a specific location.    
    
    Copy-RubbleItem [-Path] <String> [-Destination] <String> [[-Pattern] <String[]>] [[-NoFilesAction] <String>] [<CommonParameters>]


 [Read more](Copy-RubbleItem.md)
##  Expand-RubbleArchive
Extracts a ZIP file.    
    
    Expand-RubbleArchive [-Path] <String> [-OutputLocation] <String> [[-FileFilter] <String>] [<CommonParameters>]


 [Read more](Expand-RubbleArchive.md)
##  Get-RubblePattern
Transforms a string with patterns and placeholders to an array of patterns    
    
    Get-RubblePattern [-Pattern] <String> [[-Replacement] <Hashtable>] [<CommonParameters>]


 [Read more](Get-RubblePattern.md)
##  Remove-RubbleItem
Removes all subfolders in a specific folder which doesn't match any of the specified patterns.    
    
    Remove-RubbleItem [-Folder] <String> [-Pattern] <String[]> [-Files] [<CommonParameters>]


 [Read more](Remove-RubbleItem.md)
##  Write-RubbleArchive
Writes the content of a folder to a ZIP file.    
    
    Write-RubbleArchive [-Path] <String> [-OutputLocation] <String> [<CommonParameters>]


 [Read more](Write-RubbleArchive.md)

