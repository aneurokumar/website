---
public: true
title: 
tags:
  - programming
  - bash
created: 2025-04-25
last-modified: 2025-05-27
---
**Related**: [[../Asset Tiger migration project|Asset Tiger migration project]]  
  
---  
  
Used this after downloading [[./encoding barcodes to show text|barcodes I made online]] and wanting to change their file names. But I have 1000 files and did *not* want to do this manuall  
  
The script has two parts - unzipping all the zip folders which had my barcodes, and then renaming all the extracted files  
  
I did this on my windows work laptop, so this is in PowerShell  
  
# Part 1: mass unzip  
```powershell  
# file name = AssetTiger_1  
# used for unzipping all my barcode files at the same time and extracting them to a different folder  
# great for when you have zip folders that are the same name with "duplicates" in parenthesis but you just care about the files themselves  
  
# Define paths  
$zipFolder = "$env:USERPROFILE\Downloads"  
$extractTo = "$env:USERPROFILE\Desktop\rename-all"  
  
# Get all .zip files starting with "barcode"  
$zipFiles = Get-ChildItem -Path $zipFolder -Filter "barcode*.zip"  
  
# Loop and extract  
foreach ($zip in $zipFiles) {  
    Expand-Archive -Path $zip.FullName -DestinationPath $extractTo -Force  
}  
  
```  
  
# Part 2: mass rename  
  
```powershell  
# file name = AssetTiger_2  
# used for making tags for Asset Tiger  
# original files download with a "1_" precursor to all names  
# this PS script renames each file without the precursor  
  
$folderPath = "$env:USERPROFILE\Desktop\rename-all"  
  
Get-ChildItem -Path $folderPath -File | ForEach-Object {  
    if ($_ -match ".*?(PAR.*)") {  
        $newName = $matches[1]  
        Rename-Item -Path $_.FullName -NewName $newName  
    }  
}  
  
```  
