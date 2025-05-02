# Zachary Branum 012258848

#Check AD for OU "Finance"
    #Output the Answer
        #If true delete it and echo "deleted OU Finance"
    
# Create OU "Finance"
    #Echo "Created OU Finance"

#Import .\financePersonnel.csv into AD OU Finance
    #include: First, Last & Display Name(First Last); Postal Code; Office & Modile Phone
        
# Generate output file for submission    
Get-ADUser -Filter * -SearchBase “ou=Finance,dc=consultingfirm,dc=com” -Properties DisplayName,PostalCode,OfficePhone,MobilePhone > .\AdResults.txt
    