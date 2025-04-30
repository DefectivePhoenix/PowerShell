A)  Create a PowerShell script named “Restore-AD.ps1” within the attached “Requirements2” folder. Create a comment block and include your first and last name along with your student ID.

B)  Write the PowerShell commands in “Restore-AD.ps1” that perform all the following functions without user interaction:

    1)  Check for the existence of an Active Directory Organizational Unit (OU) named “Finance.” Output a message to the console that indicates if the OU exists or if it does not. If it already exists, delete it and output a message to the console that it was deleted.

    2)  Create an OU named “Finance.” Output a message to the console that it was created.
    
    3)  Import the financePersonnel.csv file (found in the attached “Requirements2” directory) into your Active Directory domain and directly into the finance OU. Be sure to include the following properties:
        •   First Name

        •   Last Name

        •   Display Name (First Name + Last Name, including a space between)

        •   Postal Code

        •   Office Phone

        •   Mobile Phone

    4) Include this line at the end of your script to generate an output file for submission:

        Get-ADUser -Filter * -SearchBase “ou=Finance,dc=consultingfirm,dc=com” -Properties DisplayName,PostalCode,OfficePhone,MobilePhone > .\AdResults.txt

C)  Create a PowerShell script named “Restore-SQL.ps1” within the attached “Requirements2” folder. Create a comment block and include your first and last name along with your student ID.

D)  Write the PowerShell commands in a script named “Restore-SQL.ps1” that perform the following functions without user interaction:

    1)  Check for the existence of a database named ClientDB. Output a message to the console that indicates if the database exists or if it does not. If it already exists, delete it and output a message to the console that it was deleted.

    2)  Create a new database named “ClientDB” on the Microsoft SQL server instance. Output a message to the console that the database was created.

    3)  Create a new table and name it “Client_A_Contacts” in your new database. Output a message to the console that the table was created.

    4)  Insert the data (all rows and columns) from the “NewClientData.csv” file (found in the attached “Requirements2” folder) into the table created in part D3.

    5)  Include this line at the end of your script to generate the output file SqlResults.txt for submission:

        Invoke-Sqlcmd -Database ClientDB –ServerInstance .\SQLEXPRESS -Query ‘SELECT * FROM dbo.Client_A_Contacts’ > .\SqlResults.txt

E)  Apply exception handling using try-catch. Output any error messages to the console.

F)  Run your Restore-AD.ps1 script from this console and take a screenshot of the output.

    1)  Run your Restore-SQL.ps1 script from this console and take a screenshot of the output.

G)  Compress the “Requirements2” folder as a ZIP archive. When you are ready to submit your final task, run the Get-FileHash cmdlet against the “Requirements2” ZIP archive. Note the hash value and place it into the comment section when you submit your task.

    1)  Include all the following files intact within the “Requirements2” folder, including the original files and any additional files you created to support your script:

        i.  “Restore-AD.ps1”

        ii.  “Restore-SQL.ps1”

        iii.  “AdResults.txt”

        iv.  “SqlResults.txt”

        v.  Screenshots from Parts F and F1

H)  Apply scripting standards throughout your script, including the addition of comments that describe the behavior of the script.
