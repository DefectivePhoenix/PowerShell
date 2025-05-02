# Zachary Branum 012258848

#Check SQL Server for "ClientDB"
    #Output the Answer
        #If true delete it and echo "deleted DB ClientDB"
    
# Create DB "ClientDB"
    #Echo "Created DB ClientDB"

#Create new table in ClientDB "Client_A_Contacts"
    #Echo "Table Client_A_Contacts Created Successfully"

#Insert .\NewClientData.csv into DB:ClientDB Table:Client_A_Contacts
    #include: First, Last & Display Name(First Last); Postal Code; Office & Modile Phone
        
# Generate output file for submission    
Invoke-Sqlcmd -Database ClientDB –ServerInstance .\SQLEXPRESS -Query ‘SELECT * FROM dbo.Client_A_Contacts’ > .\SqlResults.txt    