# Quickbooks Recovery Process

<!-- ## Step 1 - Repair your company file using the Rebuild Data tool
<br><i>*** This may alread have been done.</i></br>
* The Rebuild Data tool is built-in to QuickBooks Desktop and automatically fixes minor company file data issues.

1) Go to the File menu, then hover over Utilities and select Rebuild Data.
2) On the QuickBooks Information window, select OK. Follow the onscreen steps to save a backup.
3) Let the tool repair your file. It may take some time. QuickBooks may seem stuck, but as long as you can move your mouse, the tool is working.
4) When the tool finishes, select OK.
5) Go to the File menu. Then hover over Utilities and select Verify Data.
6) Let the tool check your file for data issues.
7) If QuickBooks doesn't find any problems, select OK. You can keep using your company file. You don't have any data damage.

If QuickBooks finds an issue with your company file, select Rebuild Now. -->
## Step 1 - QuickBooks File Doctor
<br><i>*** This may alread have been done.</i></br>

Step 1: Download and install QuickBooks Tool Hub. https://dlm2.download.intuit.com/akdlm/SBD/QuickBooks/QBFDT/QuickBooksToolHub.exe?_ga=2.115985990.1185532372.1737984378-2092869960.1737984378

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

## Step 2 - Recreate lost transactions using the current QuickBooks Transaction Log (.QBW.tlg) file and a previous copy of the QuickBooks Company (.QBW) file from December

*** Backup current .QBW and .QBW.tlg files in new directory `C:\Users\Public\Public Documents\Intuit\QuickBooks\Company Files\Backup 01272025`, copy .QBW and .QBW.tlg into it. Or see `Backup Instructions.docx`

1) Using Windows Explorer open the folder where your QuickBooks Company (.QBW) file is stored.
<!-- ![Local Image](image1.png "Image 1") -->

2) If file extensions are not visible, make them visible (Windows Explorer > Options > View > Uncheck `Hide extensions for known file types`)

3) Copy the file log_files_last_saved.cmd to the QuickBooks\Company Files folder and then execute it, this will save the details of when the .tlg and .qbw files were last modified.
```
log_files_last_saved.cmd
```

4) Within your Company Files folder, create a new folder named `Backup 01272025`

5) Cut your QuickBooks Company (.QBW) file from your Company Files folder, and

6) Paste your QuickBooks Company (.QBW) file into the newly created `Backup 01272025` folder

7) Locate and open the QuickBooksAutoDataRecovery folder within your Company Files folder

8) Identify all files within the QuickBooksAutoDataRecovery folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions.  Older files will have file extensions of .adr.old appended to their normal file extensions  Note the date, time and size of each file.)
<!-- ![Local Image](image2.png "Image 2") -->

9) Copy the file ending in .QBW.adr and return to your QuickBooks Company Files folder

10) Paste the file you just copied into your QuickBooks Company Files folder

11) Rename the .QBW.adr file so as to remove the .adr extension from the name; the renamed file should only have an extension of .QBW (this file has now replaced your prior QuickBooks Company file) within the Company Files folder.
<!-- ![Local Image](image3.png "Image 3") -->
12) Open QuickBooks

13) Open your Company file – as you do this the QuickBooks Database Server will scan all transactions within your current QuickBooks Transaction Log (.QBW.tlg) file (which remained in the Company Files folder) that have been added since the data/time the ADR file was created. Those files should be automatically appended to your QuickBooks Company file as it is opened restoring the file.

14) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

15) Use reports and/or account registers to manually verify all restored transactions.
**Title**: [QuickBooks Auto Data Recovery – Part 2: Using the Current QB](https://insightfulaccountant.com/accounting-tech/general-ledger/quickbooks-auto-data-recovery-%E2%80%93-part-2%3A-using-the-current-qb/)
**Source**: Insightful Accountant
**Published on**: *March 8, 2015 10:31 PM*
**Accessed on**: *January 27, 2025*

## Step 3 - (If Step 2 fails) QuickBooks Auto Data Recovery - Using ADR File Sets
1) Using an Auto Data Recovery file-set to recover all but the last few hours of transactions.
    * Backup current .QBW and .QBW.tlg files in new directory `C:\Users\Public\Public Documents\Intuit\QuickBooks\Company Files\Backup 01272025_2`, copy .QBW and .QBW.tlg into it.
1) Using Windows Explorer open the folder where your QuickBooks Company (.QBW) file is stored.

2) If file extensions are not visible, make them visible (Windows Explorer > Options > View > Uncheck `Hide extensions for known file types`)

3) Copy the file log_files_last_saved.cmd to the QuickBooks\Company Files folder and then execute it, this will save the details of when the .tlg and .qbw files were last modified.
```
log_files_last_saved.cmd
```

4) Within your Company Files folder, create a new folder named `Backup 01272025_2`

5) Cut your QuickBooks Transaction Log (.QBW.tlg) file from your Company Files folder, and

6) Paste your QuickBooks Transaction Log (.QBW.tlg) file into the newly created `Backup 01272025_2` folder

7) Cut your QuickBooks Company (.QBW) file from your Company Files folder, and

8) Paste your QuickBooks Company (.QBW) file into the newly created `Backup 01272025_2` folder.

9) Locate and open the QuickBooksAutoDataRecovery folder within your Company Files folder

10) Identify all files within the QuickBooksAutoDataRecovery folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions.  Older files will have file extensions of .adr.old appended to their normal file extensions  Note the date, time and size of each file.)

11) Copy the file ending in .QBW.tlg.adr and return to your QuickBooks Company Files folder

12) Paste the file you just copied into your QuickBooks Company Files folder

13) Rename the .QBW.tlg.adr ffile so as to delete the .adr file extension from the end of the file you just pasted into the file folder. The renamed file should now only have an extension of .QBW.tlg (this file has now replaced your prior QuickBooks Transaction Log file).

13) Return to the QuickBooksAutoDataRecovery folder

14) Copy the file ending in .QBW.adr and return to your QuickBooks Company Files folder

15) Paste the file you just copied into your QuickBooks Company Files folder

16) Rename the QBW.adr file so as to delete the .adr file extension from the end of the file you just pasted into the file folder. The renamed file should now only have an extension of .QBW (this file has now replaced your prior QuickBooks Company file).

17) Open QuickBooks

18) Open your Company file – as you do this the QuickBooks Database Server will scan both the .QBW and .QBW.tlg files you just restored from the ADR folder and will confirm that both files have matching data. You file should open normally and you will be back in business as of the date and time of the files when they were replicated.

19) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

20) Use reports and/or account registers to manually verify all restored transactions. Remember this data will be as many as 12-hours earlier than your prior corrupted data file; as such it will NOT contain all information which had been incorporated into that file.  It will be necessary to re-construct data previously added to your older file.

(Note: If you find that this restored set of data also contains the same corruptions, you may need to repeat these steps using the 'older' set of data withing the Auto Data Recovery file folder.  While the file names will also include .old in the exponent of each file, the procedure for restoration is identical with the exception that you will need to change file extensions to also remove the .old portion of the extension from the file names, in addition to removing the .adr portion of the extension from the file names.)

<!-- ## Step 5 - (If Steps 2 and 3 fail) Use Stellar Repair
* https://cloud.stellarinfo.com/StellarRepairforQuickBooksSoftware-A.exe?_ga=2.119774792.1355178001.1737990812-442019885.1737990812 -->
