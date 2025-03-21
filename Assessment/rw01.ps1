# Prompt for the new admin username
$NewAdminUser = Read-Host "Enter the new admin username"

# Prompt for the new admin password (masked input)
$SecurePassword = Read-Host "Enter the new admin password" -AsSecureString

# Prompt for the new computer name
$NewComputerName = Read-Host "Enter the new computer name"

# Create new local admin account
New-LocalUser -Name $NewAdminUser -Password $SecurePassword -FullName "Local Administrator" -Description "Custom Local Admin Account"

# Add the new user to the Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $NewAdminUser

# Ensure the password never expires
wmic useraccount where name="$NewAdminUser" set PasswordExpires=FALSE

# Rename the computer
Rename-Computer -NewName $NewComputerName -Force

# Restart the computer to apply changes
Restart-Computer -Force
