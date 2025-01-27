# Quickbooks Recovery Process

# Step 0 - IMPORTANT - DO THIS FIRST NO MATTER WHAT

## Create a Backup Folder:
1. In the location where your `QuickBooks\Company Files` folder resides, create a folder named `Backup 01272025`.

## Copy and Compress Entire Folder:
1. Copy the entire `QuickBooks\Company Files` folder (including all subfolders and files) into the newly created `Backup 01272025` folder.
2. Optionally, compress (zip) the `Backup 01272025` folder for space efficiency and easy portability.

## Verify the Backup:
1. After copying or compressing, ensure the backup folder contains all necessary files:
   - `.QBW` (QuickBooks Company File)
   - `.QBW.TLG` (Transaction Log File)
   - `.ADR` or `.ADR.OLD` files from the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder
   - Any `.ND` or `.DSN` files required for multi-user or networking.

## Store the Backup Safely:
1. Save the `Backup 01272025` folder to a safe location, such as:
   - An external hard drive
   - A secure network drive
   - A cloud storage service (e.g., Google Drive, OneDrive)


### Key Points to Remember:
1) Same Folder Requirement:
    * Both the `.QBW` and `.QBW.TLG` files must be in the same folder for QuickBooks to function properly.

2) Backup Safety:

    * When you back up the `.QBW` file, always back up the `.QBW.TLG` file as well to ensure consistency during recovery.

3) During Recovery:

    * If you replace the `.QBW` file with a renamed `.QBW.adr` -> `.QBW` file, QuickBooks will still use the `.QBW.TLG` file in the same folder to reconstruct recent transactions.

## Step 1 - QuickBooks File Doctor
<br><i>*** This may alread have been done.  If so, we can skip to Step 2.</i></br>

Step 1: Download and install QuickBooks Tool Hub. https://dlm2.download.intuit.com/akdlm/SBD/QuickBooks/QBFDT/QuickBooksToolHub.exe
<br /><i>Check for the latest version of QuickBooks Tool Hub before downloading.</i>

1) Close QuickBooks.
2) Download the most recent version (1.6.0.8) of the QuickBooks Tool Hub. Save the file somewhere you can easily find it (like your Downloads folder or your Windows desktop). Note: If you've installed Tool Hub before, you can find out which version you have. Select the Home tab. The version will be on the bottom.
3) Open the file you downloaded (QuickBooksToolHub.exe).
4) Follow the on-screen steps to install and agree to the terms and conditions.
5) When the install finishes, double-click the icon on your Windows desktop to open the tool hub.

Step 2: Run Quick Fix my File
1) From the tool hub, select Company File Issues.
2) Select Quick Fix my File.
3) Select OK when it completes and launch your QuickBooks.

Step 3: Run QuickBooks File Doctor
1) From the tool hub, select Company File Issues.
2) Select Run QuickBooks File Doctor. It can take up to one minute for the file doctor to open.
<br><strong>Note:</strong> If the QuickBooks File Doctor doesn't open, search for QuickBooks Desktop File Doc and open it manually.
3) In QuickBooks File Doctor, select your company file from the dropdown menu. If you don’t see your file, select Browse and search to find your file.
4) Select Check your file (middle option only) and then Continue.
5) Enter your QuickBooks admin password and then select Next.

The scan time depends on your file size and can take up to 10–15 minutes. The scan may say it was unsuccessful even if it fixes your issue. Once the scan finishes, open QuickBooks, and your company file.

## Step 2 - Step 2: Rebuild QuickBooks Data Using the Current Transaction Log and ADR Snapshot
*** This step assumes that the original files are corrupted but `.QBW.TLG` and `.ADR` files are available for reconstruction.

1) Using Windows Explorer open the folder where your QuickBooks Company (`.QBW`) file is stored (`QuickBooks\Company Files`).

2) If file extensions are not visible, make them visible (Windows Explorer > Options > View > Uncheck `Hide extensions for known file types`)

3) Copy the file `logFiles.cmd` to the `QuickBooks\Company Files` folder and then execute it (navigate to the `QuickBooks\Company Files` folder in windows explorer, in the address bar type `cmd` and then hit enter, this will open the command prompt in the current directory, then you can enter `logFiles.cmd` and hit enter, then follow the prompts to run it, which will log the `.QBW` and `.QBW.TLG` file sizes and last modified dates), this will save the details of when the `.QBW.TLG` and `.QBW` files were last modified.

4) Navigate to `QuickBooks\Company Files` folder.

5) Since you have already backed up the `.QBW` to the `QuickBooks\Company Files\Backup 01272025` folder - IMPORTANT - if this hasn't been done, make sure Step 0 was completed!!!), now you can safely `DELETE` your QuickBooks Company (`.QBW`) file from your `QuickBooks\Company Files` folder.

6) Locate and open the  `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder.

7) Identify all files within the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of `.adr` appended to their normal file extensions.  Older files will have file extensions of `.adr.old` appended to their normal file extensions  Note the date, time and size of each file.)

    * ***Files with `.adr.old` extensions are older backups. Use these only if the `.adr` files fail.

8) COPY the file ending in `.QBW.adr` and return to your `QuickBooks\Company Files` folder

9) Paste the file you just copied ending in `.QBW.adr` into your `QuickBooks\Company Files` folder

10) Rename the `.QBW.adr` file so as to remove the `.adr` extension from the name; the renamed file should only have an extension of `.QBW`.

11) Open QuickBooks

12) Open your Company file – as you do this the QuickBooks Database Server will scan all transactions within your current QuickBooks Transaction Log (`.QBW.TLG`) file (which remained in the Company Files folder) that have been added since the data/time the ADR file was created. Those files should be automatically appended to your `QuickBooks\Company Files` as it is opened restoring the file.

14) Run the Verify Data utility, Review the `QBWin.log` if Verify Does not complete normally.

15) Use reports and/or account registers to manually verify all restored transactions.

## Step 3 - Recover Data Using Full ADR File Sets (If Step 2 Fails)
1) Using an Auto Data Recovery file-set to recover all but the last few hours of transactions.

1) Using Windows Explorer open the folder where your QuickBooks Company (`.QBW`) and QuickBooks Company Transaction Log (`.QBW.TLG`) file is stored (`QuickBooks\Company Files`).

2) Locate and open the  `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder.

3) Identify all files within the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions. Older files will have file extensions of `.adr.old` appended to their normal file extensions. Note the date, time, and size of each file.)

4) Copy the file ending in `.QBW.TLG.adr` and return to your `QuickBooks\Company Files` folder.

6) PASTE the file ending in `.QBW.TLG.adr` into the `QuickBooks\Company Files` folder.

5) Since you have already backed up the `.QBW.TLG` to the `QuickBooks\Company Files\Backup 01272025` folder -  you can now safely `DELETE` your QuickBooks Company Transaction Log (`.QBW.TLG`) file from your `QuickBooks\Company Files` folder.

6) Rename the `.QBW.TLG.adr` file so as to remove the `.adr` file extension. The renamed file should now only have an extension of `.QBW.TLG` (this file has now replaced your prior QuickBooks Transaction Log file).

7) Open QuickBooks.

8) Open your Company file – as you do this the QuickBooks Database Server will scan both the `.QBW` and `.QBW.TLG` in the `QuickBooks\Company Files` folder with the files you just restored from the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder and will confirm that both files have matching data. You file should open normally and you will be back in business as of the date and time of the files when they were replicated.

9) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

10) Use reports and/or account registers to manually verify all restored transactions. Remember this data will be as many as 12-hours earlier than your prior corrupted data file; as such it will NOT contain all information which had been incorporated into that file.  It will be necessary to re-construct data previously added to your older file.

(Note: If you find that this restored set of data also contains the same corruptions, you may need to repeat these steps using the 'older' set of data within the Auto Data Recovery file folder.  While the file names will also include .old in the exponent of each file, the procedure for restoration is identical with the exception that you will need to change file extensions to also remove the .old portion of the extension from the file names, in addition to removing the .adr portion of the extension from the file names.)

| **Aspect**                 |   **Step 2**                                                                       |  **Step 3**                                                                            |
|----------------------------|------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| **Transaction Log File**   | Uses the live `.QBW.TLG` file from the Company Files folder.                                            | Uses the `.QBW.TLG.adr` file from the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder.                      |
| **When to Use**            | When the `.QBW.TLG` file is intact and can reliably append transactions to the `.QBW.adr` file.         | When the `.QBW.TLG` file is corrupted or missing, and the `.QBW.TLG.adr` file is available.           |
| **Risk of Data Loss**      | Minimal, as all recent transactions in the `.QBW.TLG` file will be appended to the `.QBW.adr` file.     | Possible loss of a few hours of transactions, as the `.QBW.TLG.adr` file may not be fully up-to-date. |
| **Outcome**                | Restores the `.QBW` file using the `.QBW.adr` file and supplements it with transactions from `.QBW.TLG`.| Restores the `.QBW` file using the `.QBW.adr` file and `.QBW.TLG.adr` from the `QuickBooks\Company Files\QuickBooksAutoDataRecovery` folder.|


## Step 4 - Use Stellar Repair for QuickBooks
1) Download from the following link:

https://www.stellarinfo.com/file-repair/quickbooks-recovery/quickbooks-recovery.php?gad_source=1&gclid=CjwKCAiA-ty8BhA_EiwAkyoa36Dy8j1H_m6IR0iaw3vvl7zwWpyvH-4dAWAFYyTZbjxottTT7rNi7xoCCh4QAvD_BwE
* Free download allows to preview the recoverable data. If we're able to view the data, then I will supply the product key via Upwork for the licensed version.