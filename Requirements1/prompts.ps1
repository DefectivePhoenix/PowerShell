# Zachary Branum 012258848

do{

    #Menu

    # Create Daily Log - Press 1
       #Create "DailyLog.txt" That outputs the current date followed by a list the .log files within the folder without overwriting existing data.
    # Create Contents Log - Press 2
        #Create "C916contents.txt" That outputs the folder contents in tabular format.
    # Current System Information - Press 3
        #Show the Current CPU and Memory usage.
    # Current Running Processes - Press 4
        #Show the Current Running Processes in a grid.
    # Exit - Press 5
        #Ends script execution.

    Write-Output "Welcome!
    Press 1 - Create a Daily Log
    Press 2 - Create Contents Log
    Press 3 - Show Current CPU and Memory Usage
    Press 4 - Show Current Running Processes
    Press 5 - Exit"

    #User Selection

    $TaskSelection = Read-Host -Prompt "Enter a Number to Select a Task to Complete."

    #Tasks

    switch ($TaskSelection) {
    # Create Daily Log - Press 1
    #Create "DailyLog.txt" That outputs the current date followed by a list the .log files within the folder without overwriting existing data.
        1 {
            Write-Output "Step 1!"
        }
    # Create Contents Log - Press 2
    #Create "C916contents.txt" That outputs the folder contents in tabular format.
        2 {
            Write-Output "Step 2!"
        }
    # Current System Information - Press 3
    #Show the Current CPU and Memory usage.    
        3 {
            $cpu = Get-Counter '\Processor(_Total)\% Processor Time' 
            $mem = ge

            Write-Output "$cpu $mem"
        }
    # Current Running Processes - Press 4
    #Show the Current Running Processes in a grid.
        4 {
            Write-Output "Step 4!"
        }
    # Exit - Press 5
    #Ends script execution.
        5 {
            break
        }
        Default {Write-Output "Pick a Different Task!"}
    }
} until ($TaskSelection -eq 5)
clear
Write-Output "Thank you, Goodbye!"