get-help
# This command retrieves help information for PowerShell cmdlets and concepts.
get-command
# This command lists all available cmdlets, functions, aliases, and scripts in the current session.
-verb get
# This command filters the list of commands to only include those with the verb "Get".
get-member -inputobject (get-process
)
# This command retrieves the properties and methods of the objects returned by the `get-process` cmdlet.
get-help get-process    
set-psreadlineoption -predictionsource History
# This command sets the prediction source for the PowerShell Readline to use the command history.
$Profile
# This variable contains the path to the PowerShell profile script for the current user.
if (!Test-Path $Profile) {
    New-Item -Path $Profile -ItemType File -Force
}