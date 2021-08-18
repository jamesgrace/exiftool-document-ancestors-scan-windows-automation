# exiftool-document-ancestors-scan-windows-automation
Microsoft Windows Batch script that perform recursive scanning ( _within a folder structure_ ) for files containing `XMP-Photoshop:DocumentAncestors` metadata greater than 100 values. Script includes logging , customizable email notifications , as well as the capability for predetermined scheduling ( _via the Microsoft Windows Task Scheduler_ ).

#### Requirements :
* ExifTool - https://exiftool.org/install.html
* Blat ( _64bit_ ) - https://www.blat.net

## Installation Procedure :

#### 1. BATCH FILE CONFIGURATION
* **`ExifTool_Scan.cmd`**

  * `exiftoollocation` = `C:\Windows`
    * ExifTool installaiton location.
  * `blatlocation` = `C:\Program Files\Blat`
    * Blat installation location.
  * `scanfolder` = `D:\ASSETS`
    * Folder location containing files to be scanned.
  * `scanlogfolder` = `D:\ExifTool Scan`
    * Folder location containing scan logs.
  * `scanlogfilename` = `ExifTool_Scan_Log.txt`
    * Filename for the scan log.
  * `emailserver` = `mail.example.com`
    * Email - Server:
  * `emailto` = `recipient@example.com`
    * Email - To:
  * `emailfrom` = `server_noreply@example.com`
    * Email - From:
  * `emailsubject` = `"Automation Notification: VAULT Backup Log"`
    * Email - Subject:

#### 2. Detailed information regarding files that may contain "inflated" `XMP-Photoshop:DocumentAncestors` metadata can be found here : https://prepression.blogspot.com/2017/06/metadata-bloat-photoshopdocumentancestors.html
