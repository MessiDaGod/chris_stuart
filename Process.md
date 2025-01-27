# Quickbooks Recovery Process

## Step 0 - IMPORTANT - DO THIS FIRST NO MATTER WHAT

1) Within your Company Files folder, create a new folder named `Backup 01272025`

2) COPY your QuickBooks Transaction Log .QBW.TLG and your .QBW file from your Company Files folder, and

3) Paste both into the newly created `Backup 01272025` folder

### Key Points to Remember:
1) Same Folder Requirement:
    * Both the .QBW and .TLG files must be in the same folder for QuickBooks to function properly.

2) Backup Safety:

    * When you back up the .QBW file, always back up the .TLG file as well to ensure consistency during recovery.

3) During Recovery:

    * If you replace the .QBW file with a renamed .QBW.adr file, QuickBooks will still use the .TLG file in the same folder to reconstruct recent transactions.

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

## Step 2 - Recreate lost transactions using the current QuickBooks Transaction Log (.QBW.TLG) file and a previous copy of the QuickBooks Company (.QBW) file from December
*** This step assumes that the original files are corrupted but .TLG and .ADR files are available for reconstruction.

1) Using Windows Explorer open the folder where your QuickBooks Company (.QBW) file is stored.

2) If file extensions are not visible, make them visible (Windows Explorer > Options > View > Uncheck `Hide extensions for known file types`)

3) Copy the file `log_files_last_saved.cmd` to the `QuickBooks\Company Files` folder and then execute it (navigate to the `Company Files` folder in windows explorer, in the address bar type `cmd` and then hit enter, this will open the command prompt in the current directory, then you can enter `log_files_last_saved.cmd` and hit enter, then follow the prompts to run it, which will log the .QBW and .QBW.TLG file sizes and last modified dates), this will save the details of when the .TLG and .QBW files were last modified.

4) Within your Company Files folder, navigate to the folder `Company Files` folder

5) DELETE your QuickBooks Company (.QBW) file from your Company Files folder (since it's already been backed up in `Backup 01272025` folder - IMPORTANT - if this hasn't been done, make sure Step 0 was completed!), and

6) Locate and open the QuickBooksAutoDataRecovery folder within your Company Files folder

7) Identify all files within the QuickBooksAutoDataRecovery folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions.  Older files will have file extensions of .adr.old appended to their normal file extensions  Note the date, time and size of each file.)

    * ***Files with .adr.old extensions are older backups. Use these only if the .adr files fail.

8) COPY the file ending in .QBW.adr and return to your `QuickBooks\Company Files` folder

9) Paste the file you just copied ending in .QBW.adr into your `QuickBooks\Company Files` folder

10) Rename the .QBW.adr file so as to remove the .adr extension from the name; the renamed file should only have an extension of .QBW (this file has now replaced your prior `QuickBooks\Company Files`) within the Company Files folder (with the original backup being in the `Backup 01272025` folder).

11) Open QuickBooks

12) Open your Company file – as you do this the QuickBooks Database Server will scan all transactions within your current QuickBooks Transaction Log (.QBW.TLG) file (which remained in the Company Files folder) that have been added since the data/time the ADR file was created. Those files should be automatically appended to your `QuickBooks\Company Files` as it is opened restoring the file.

14) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

15) Use reports and/or account registers to manually verify all restored transactions.

## Step 3 - (If Step 2 fails) QuickBooks Auto Data Recovery - Using ADR File Sets
1) Using an Auto Data Recovery file-set to recover all but the last few hours of transactions.

2) Using Windows Explorer, open the folder where your QuickBooks Company (.QBW) file is stored.

3) Within your Company Files folder, create a new folder named `Backup 01272025_2`.

4) COPY your QuickBooks Transaction Log (.QBW.TLG) file from your Company Files folder, and

5) Paste your QuickBooks Transaction Log (.QBW.TLG) file into the newly created `Backup 01272025_2` folder.

6) Locate and open the QuickBooksAutoDataRecovery folder within your Company Files folder.

7) Identify all files within the QuickBooksAutoDataRecovery folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions. Older files will have file extensions of `.adr.old` appended to their normal file extensions. Note the date, time, and size of each file.)

8) Copy the file ending in `.QBW.TLG.adr` and return to your `QuickBooks\Company Files` folder.

9) Paste the file you just copied into your `QuickBooks\Company Files` folder.

10) Rename the `.QBW.TLG.adr` file so as to delete the `.adr` file extension. The renamed file should now only have an extension of `.QBW.TLG` (this file has now replaced your prior QuickBooks Transaction Log file).

11) Open QuickBooks.

12) Open your Company file – as you do this the QuickBooks Database Server will scan both the .QBW and .QBW.TLG files you just restored from the ADR folder and will confirm that both files have matching data. You file should open normally and you will be back in business as of the date and time of the files when they were replicated.

13) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

14) Use reports and/or account registers to manually verify all restored transactions. Remember this data will be as many as 12-hours earlier than your prior corrupted data file; as such it will NOT contain all information which had been incorporated into that file.  It will be necessary to re-construct data previously added to your older file.

(Note: If you find that this restored set of data also contains the same corruptions, you may need to repeat these steps using the 'older' set of data within the Auto Data Recovery file folder.  While the file names will also include .old in the exponent of each file, the procedure for restoration is identical with the exception that you will need to change file extensions to also remove the .old portion of the extension from the file names, in addition to removing the .adr portion of the extension from the file names.)

## Step 4 - Use Stellar Repair for QuickBooks
1) Download from the following link:

https://www.stellarinfo.com/file-repair/quickbooks-recovery/quickbooks-recovery.php?gad_source=1&gclid=CjwKCAiA-ty8BhA_EiwAkyoa36Dy8j1H_m6IR0iaw3vvl7zwWpyvH-4dAWAFYyTZbjxottTT7rNi7xoCCh4QAvD_BwE
* Free download allows to preview the recoverable data. If we're able to view the data, then I will supply the product key via Upwork for the licensed version.