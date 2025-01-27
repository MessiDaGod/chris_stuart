# Step 1 - QuickBooks File Doctor (15 minutes)

* Ensure the issue isn’t related to basic corruption or installation errors. <br><i>*** This may alread have been done.</i></br>

# Step 2 - Use Stellar Repair
* https://cloud.stellarinfo.com/StellarRepairforQuickBooksSoftware-A.exe?_ga=2.119774792.1355178001.1737990812-442019885.1737990812

# Step 3 - Recreate lost transactions using the current QuickBooks Transaction Log (.QBW.tlg) file and a previous copy of the QuickBooks Company (.QBW) file from December

0) Backup current .QBW and .QBW.tlg files in new directory inside `C:\Users\Public\Public Documents\Intuit\QuickBooks\Company Files`, (create new directory, copy .QBW and .QBW.tlg into it)
1) Using Windows Explorer open the folder where your QuickBooks Company (.QBW) file is stored.

2) If file extensions are not visible, make them visible (see the Windows operating instructions for your version of the Windows-OS if you are not familiar with this step.)

3) Note the size and date modified for both your QuickBooks Company (.QBW) file and the QuickBooks Transaction Log (.QBW.tlg) file.

4) Within your Company Files folder, create a new folder named Old Files

5) Cut your QuickBooks Company (.QBW) file from your Company Files folder, and

6) Paste your QuickBooks Company (.QBW) file into the newly created Old Files folder

7) Locate and open the QuickBooksAutoDataRecovery folder within your Company Files folder

8) Identify all files within the QuickBooksAutoDataRecovery folder – the number of files may vary depending on several factors. (Files are typically produced every 12 hours. Newer files will have file extensions of .adr appended to their normal file extensions.  Older files will have file extensions of .adr.old appended to their normal file extensions  Note the date, time and size of each file.)


9) Copy the file ending in .QBW.adr and return to your QuickBooks Company Files folder

10) Paste the file you just copied into your QuickBooks Company Files folder

11) Rename the .QBW.adr file so as to remove the .adr extension from the name; the renamed file should only have an extension of .QBW (this file has now replaced your prior QuickBooks Company file) within the Company Files folder.

12) Open QuickBooks

13) Open your Company file – as you do this the QuickBooks Database Server will scan all transactions within your current QuickBooks Transaction Log (.QBW.tlg) file (which remained in the Company Files folder) that have been added since the data/time the ADR file was created. Those files should be automatically appended to your QuickBooks Company file as it is opened restoring the file.

14) Run the Verify Data utility, Review the QBWin.log if Verify Does not complete normally.

15) Use reports and/or account registers to manually verify all restored transactions.
**Title**: [QuickBooks Auto Data Recovery – Part 2: Using the Current QB](https://insightfulaccountant.com/accounting-tech/general-ledger/quickbooks-auto-data-recovery-%E2%80%93-part-2%3A-using-the-current-qb/)
**Source**: Insightful Accountant
**Published on**: *March 8, 2015 10:31 PM*
**Accessed on**: *January 27, 2025*
