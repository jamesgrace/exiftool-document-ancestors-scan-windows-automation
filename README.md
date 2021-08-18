# exiftool-document-ancestors-scan-windows-automation
Microsoft Windows Batch script that includes logging , customizable email notifications , as well as the capability for predetermined scheduling ( _via the Microsoft Windows Task Scheduler_ ).

#### Requirements :
* 
* ExifTool - https://exiftool.org/install.html
* Blat ( _64bit_ ) - https://www.blat.net

## Installation Procedure :

#### 3. BATCH FILE CONFIGURATION
* **`ExifTool_Scan.cmd`**

  * `exiftoollocation` = `C:\Windows`
    * 7-Zip installaiton location.
  * `blatlocation` = `C:\Program Files\Blat`
    * Blat installation location.
  * `scanfolder` = `D:\ASSETS`
    * Folder location of Vault backups.
  * `backuplogfilename` = `VAULT_Backup_Log.txt`
    * Filename for the Vault Backup log.
  * `emailserver` = `mail.example.com`
    * Email - Server
  * `emailto` = `recipient@example.com`
    * Email - To:
  * `emailfrom` = `server_noreply@example.com`
    * Email - From:
  * `emailsubject` = `"Automation Notification: VAULT Backup Log"`
    * Email - Subject:
