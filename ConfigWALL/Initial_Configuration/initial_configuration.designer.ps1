$Initial_Configuration_Form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.StatusStrip]$ErrorsOutput_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
[System.Windows.Forms.Button]$Cancel_Button = $null
[System.Windows.Forms.Button]$Done_Button = $null
[System.Windows.Forms.Label]$AdministrationTitle_Label = $null
[System.Windows.Forms.Label]$SiteCode_Label = $null
[System.Windows.Forms.Label]$DomainName_Label = $null
[System.Windows.Forms.Label]$CurrentAdmin_Label = $null
[System.Windows.Forms.Label]$NewAdminName_Label = $null
[System.Windows.Forms.Label]$CurrentPassword_Label = $null
[System.Windows.Forms.Label]$LANTitle_Label = $null
[System.Windows.Forms.Label]$LANIP_Label = $null
[System.Windows.Forms.Label]$LANSubnetMask_Label = $null
[System.Windows.Forms.Label]$LANPort_Label = $null
[System.Windows.Forms.Label]$PrimaryLANDNS_Label = $null
[System.Windows.Forms.Label]$SecondaryLANDNS_Label = $null
[System.Windows.Forms.Label]$WANTitle_Label = $null
[System.Windows.Forms.Label]$PrimaryWANIP_Label = $null
[System.Windows.Forms.Label]$PrimaryWANNetmask_Label = $null
[System.Windows.Forms.Label]$PrimaryWANGW_Label = $null
[System.Windows.Forms.Label]$PrimaryWANComment_Label = $null
[System.Windows.Forms.Label]$PrimaryWANPort_Label = $null
[System.Windows.Forms.Label]$SecondaryWANPrompt_Label = $null
[System.Windows.Forms.RadioButton]$2ndISPYes_RadioButton = $null
[System.Windows.Forms.RadioButton]$2ndISPNo_RadioButton = $null
[System.Windows.Forms.TextBox]$SiteCode_TextBox = $null
[System.Windows.Forms.TextBox]$DomainName_TextBox = $null
[System.Windows.Forms.TextBox]$CurrentAdmin_TextBox = $null
[System.Windows.Forms.TextBox]$NewAdminName_TextBox = $null
[System.Windows.Forms.TextBox]$CurrentPassword_TextBox = $null
[System.Windows.Forms.TextBox]$LANIP_TextBox = $null
[System.Windows.Forms.TextBox]$LANSubnetMask_TextBox = $null
[System.Windows.Forms.TextBox]$LANPort_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryLANDNS_TextBox = $null
[System.Windows.Forms.TextBox]$SecondaryLANDNS_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANIP_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANNetmask_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANGW_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANComment_TextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANPort_TextBox = $null
[System.Windows.Forms.Label]$SecondaryWANTitle_Label = $null
[System.Windows.Forms.Label]$SecondaryWANIP_Label = $null
[System.Windows.Forms.Label]$SecondaryWANNetmask_Label = $null
[System.Windows.Forms.Label]$SecondaryWANGW_Label = $null
[System.Windows.Forms.Label]$SecondaryWANComment_Label = $null
[System.Windows.Forms.Label]$SecondaryWANPort_Label = $null
[System.Windows.Forms.TextBox]$SecondaryWANIP_TextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANNetmask_TextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANGW_TextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANComment_TextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANPort_TextBox = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'initial_configuration.resources.ps1')
$ErrorsOutput_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$Cancel_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Done_Button = (New-Object -TypeName System.Windows.Forms.Button)
$AdministrationTitle_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SiteCode_Label = (New-Object -TypeName System.Windows.Forms.Label)
$DomainName_Label = (New-Object -TypeName System.Windows.Forms.Label)
$CurrentAdmin_Label = (New-Object -TypeName System.Windows.Forms.Label)
$NewAdminName_Label = (New-Object -TypeName System.Windows.Forms.Label)
$CurrentPassword_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LANTitle_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LANIP_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LANSubnetMask_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LANPort_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANDNS_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryLANDNS_Label = (New-Object -TypeName System.Windows.Forms.Label)
$WANTitle_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANIP_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANNetmask_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANGW_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANComment_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANPort_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANPrompt_Label = (New-Object -TypeName System.Windows.Forms.Label)
$2ndISPYes_RadioButton = (New-Object -TypeName System.Windows.Forms.RadioButton)
$2ndISPNo_RadioButton = (New-Object -TypeName System.Windows.Forms.RadioButton)
$SiteCode_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DomainName_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$CurrentAdmin_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$NewAdminName_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$CurrentPassword_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LANIP_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LANSubnetMask_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LANPort_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryLANDNS_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryLANDNS_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANIP_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANNetmask_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANGW_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANComment_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANPort_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANTitle_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANIP_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANNetmask_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANGW_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANComment_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANPort_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANIP_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANNetmask_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANGW_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANComment_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANPort_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$ErrorsOutput_StatusStrip.SuspendLayout()
$Initial_Configuration_Form.SuspendLayout()
#
#ErrorsOutput_StatusStrip
#
$ErrorsOutput_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$ErrorsOutput_StatusStrip.Dock = [System.Windows.Forms.DockStyle]::Top
$ErrorsOutput_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$ErrorsOutput_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$ErrorsOutput_StatusStrip.Name = [System.String]'ErrorsOutput_StatusStrip'
$ErrorsOutput_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]587,[System.Int32]22))
$ErrorsOutput_StatusStrip.TabIndex = [System.Int32]0
$ErrorsOutput_StatusStrip.Text = [System.String]'ErrorsOutput_StatusStrip'
#
#ErrorStatus_Label
#
$ErrorStatus_Label.BackColor = [System.Drawing.Color]::Transparent
$ErrorStatus_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ErrorStatus_Label.ForeColor = [System.Drawing.Color]::Red
$ErrorStatus_Label.Name = [System.String]'ErrorStatus_Label'
$ErrorStatus_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]17))
$ErrorStatus_Label.Text = [System.String]'Error Output'
#
#Cancel_Button
#
$Cancel_Button.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$Cancel_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel_Button.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel_Button.ForeColor = [System.Drawing.Color]::Red
$Cancel_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]502,[System.Int32]25))
$Cancel_Button.Name = [System.String]'Cancel_Button'
$Cancel_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel_Button.TabIndex = [System.Int32]25
$Cancel_Button.Text = [System.String]'Cancel'
$Cancel_Button.UseVisualStyleBackColor = $false
#
#Done_Button
#
$Done_Button.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done_Button.ForeColor = [System.Drawing.Color]::DarkGreen
$Done_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]423,[System.Int32]25))
$Done_Button.Name = [System.String]'Done_Button'
$Done_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done_Button.TabIndex = [System.Int32]24
$Done_Button.Text = [System.String]'Done'
$Done_Button.UseVisualStyleBackColor = $false
$Done_Button.add_MouseClick($Done_MouseClick)
#
#AdministrationTitle_Label
#
$AdministrationTitle_Label.BackColor = [System.Drawing.SystemColors]::Menu
$AdministrationTitle_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$AdministrationTitle_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdministrationTitle_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]27))
$AdministrationTitle_Label.Name = [System.String]'AdministrationTitle_Label'
$AdministrationTitle_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$AdministrationTitle_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]40))
$AdministrationTitle_Label.TabIndex = [System.Int32]30
$AdministrationTitle_Label.Text = [System.String]'Administration'
#
#SiteCode_Label
#
$SiteCode_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]68))
$SiteCode_Label.Name = [System.String]'SiteCode_Label'
$SiteCode_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SiteCode_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$SiteCode_Label.TabIndex = [System.Int32]30
$SiteCode_Label.Text = [System.String]'What is the site code? Use capital letters.'
#
#DomainName_Label
#
$DomainName_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]98))
$DomainName_Label.Name = [System.String]'DomainName_Label'
$DomainName_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$DomainName_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$DomainName_Label.TabIndex = [System.Int32]30
$DomainName_Label.Text = [System.String]'Enter the site domain name.'
#
#CurrentAdmin_Label
#
$CurrentAdmin_Label.BackColor = [System.Drawing.SystemColors]::Info
$CurrentAdmin_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$CurrentAdmin_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$CurrentAdmin_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]128))
$CurrentAdmin_Label.Name = [System.String]'CurrentAdmin_Label'
$CurrentAdmin_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$CurrentAdmin_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CurrentAdmin_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$CurrentAdmin_Label.TabIndex = [System.Int32]30
$CurrentAdmin_Label.Text = [System.String]'Enter the current admin username.'
#
#NewAdminName_Label
#
$NewAdminName_Label.BackColor = [System.Drawing.SystemColors]::Info
$NewAdminName_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$NewAdminName_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$NewAdminName_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]158))
$NewAdminName_Label.Name = [System.String]'NewAdminName_Label'
$NewAdminName_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$NewAdminName_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$NewAdminName_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]35))
$NewAdminName_Label.TabIndex = [System.Int32]30
$NewAdminName_Label.Text = [System.String]'Enter the new admin username. (eg. gtsadmin)'
#
#CurrentPassword_Label
#
$CurrentPassword_Label.BackColor = [System.Drawing.SystemColors]::Info
$CurrentPassword_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$CurrentPassword_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$CurrentPassword_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]193))
$CurrentPassword_Label.Name = [System.String]'CurrentPassword_Label'
$CurrentPassword_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$CurrentPassword_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CurrentPassword_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]35))
$CurrentPassword_Label.TabIndex = [System.Int32]30
$CurrentPassword_Label.Text = [System.String]'Enter the current password. (eg. password)'
#
#LANTitle_Label
#
$LANTitle_Label.BackColor = [System.Drawing.SystemColors]::Menu
$LANTitle_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$LANTitle_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold))
$LANTitle_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LANTitle_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]228))
$LANTitle_Label.Name = [System.String]'LANTitle_Label'
$LANTitle_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LANTitle_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANTitle_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]35))
$LANTitle_Label.TabIndex = [System.Int32]30
$LANTitle_Label.Text = [System.String]'LAN'
#
#LANIP_Label
#
$LANIP_Label.BackColor = [System.Drawing.SystemColors]::Info
$LANIP_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANIP_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LANIP_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]263))
$LANIP_Label.Name = [System.String]'LANIP_Label'
$LANIP_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LANIP_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANIP_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$LANIP_Label.TabIndex = [System.Int32]30
$LANIP_Label.Text = [System.String]'Enter the primary LAN gateway IP in the following format. (ie. 010.110.050.001)'
#
#LANSubnetMask_Label
#
$LANSubnetMask_Label.BackColor = [System.Drawing.SystemColors]::Info
$LANSubnetMask_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANSubnetMask_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LANSubnetMask_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]323))
$LANSubnetMask_Label.Name = [System.String]'LANSubnetMask_Label'
$LANSubnetMask_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LANSubnetMask_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANSubnetMask_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$LANSubnetMask_Label.TabIndex = [System.Int32]30
$LANSubnetMask_Label.Text = [System.String]'Enter the subnet mask for primary LAN interface. (ie. 255.255.255.0)'
#
#LANPort_Label
#
$LANPort_Label.BackColor = [System.Drawing.SystemColors]::Info
$LANPort_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANPort_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LANPort_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]383))
$LANPort_Label.Name = [System.String]'LANPort_Label'
$LANPort_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LANPort_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANPort_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$LANPort_Label.TabIndex = [System.Int32]30
$LANPort_Label.Text = [System.String]'What interface will be used for primary LAN on the Sonicwall? (ie. X0)'
#
#PrimaryLANDNS_Label
#
$PrimaryLANDNS_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryLANDNS_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryLANDNS_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryLANDNS_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]432))
$PrimaryLANDNS_Label.Name = [System.String]'PrimaryLANDNS_Label'
$PrimaryLANDNS_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryLANDNS_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANDNS_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$PrimaryLANDNS_Label.TabIndex = [System.Int32]30
$PrimaryLANDNS_Label.Text = [System.String]'Enter the IP address of the local domain controller to be used for primary DNS server.'
#
#SecondaryLANDNS_Label
#
$SecondaryLANDNS_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryLANDNS_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryLANDNS_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryLANDNS_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]492))
$SecondaryLANDNS_Label.Name = [System.String]'SecondaryLANDNS_Label'
$SecondaryLANDNS_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryLANDNS_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryLANDNS_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$SecondaryLANDNS_Label.TabIndex = [System.Int32]30
$SecondaryLANDNS_Label.Text = [System.String]'Enter the IP address of the PDC to be used for the secondary DNS server.'
#
#WANTitle_Label
#
$WANTitle_Label.BackColor = [System.Drawing.SystemColors]::Menu
$WANTitle_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$WANTitle_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold))
$WANTitle_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$WANTitle_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]547))
$WANTitle_Label.Name = [System.String]'WANTitle_Label'
$WANTitle_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANTitle_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANTitle_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]40))
$WANTitle_Label.TabIndex = [System.Int32]30
$WANTitle_Label.Text = [System.String]'WAN'
#
#PrimaryWANIP_Label
#
$PrimaryWANIP_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANIP_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANIP_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANIP_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]587))
$PrimaryWANIP_Label.Name = [System.String]'PrimaryWANIP_Label'
$PrimaryWANIP_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANIP_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANIP_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$PrimaryWANIP_Label.TabIndex = [System.Int32]30
$PrimaryWANIP_Label.Text = [System.String]'Enter the primary public IP address.'
#
#PrimaryWANNetmask_Label
#
$PrimaryWANNetmask_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANNetmask_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANNetmask_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANNetmask_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]617))
$PrimaryWANNetmask_Label.Name = [System.String]'PrimaryWANNetmask_Label'
$PrimaryWANNetmask_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANNetmask_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANNetmask_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$PrimaryWANNetmask_Label.TabIndex = [System.Int32]30
$PrimaryWANNetmask_Label.Text = [System.String]'Enter the primary public IP address netmask.'
#
#PrimaryWANGW_Label
#
$PrimaryWANGW_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANGW_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANGW_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANGW_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]647))
$PrimaryWANGW_Label.Name = [System.String]'PrimaryWANGW_Label'
$PrimaryWANGW_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANGW_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANGW_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]35))
$PrimaryWANGW_Label.TabIndex = [System.Int32]30
$PrimaryWANGW_Label.Text = [System.String]'Enter the gateway for the primary Public IP.'
#
#PrimaryWANComment_Label
#
$PrimaryWANComment_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANComment_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANComment_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANComment_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]682))
$PrimaryWANComment_Label.Name = [System.String]'PrimaryWANComment_Label'
$PrimaryWANComment_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANComment_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANComment_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$PrimaryWANComment_Label.TabIndex = [System.Int32]30
$PrimaryWANComment_Label.Text = [System.String]'Enter the description for this connection. (eg. Comcast Coax)'
#
#PrimaryWANPort_Label
#
$PrimaryWANPort_Label.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANPort_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANPort_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANPort_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]742))
$PrimaryWANPort_Label.Name = [System.String]'PrimaryWANPort_Label'
$PrimaryWANPort_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANPort_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPort_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$PrimaryWANPort_Label.TabIndex = [System.Int32]30
$PrimaryWANPort_Label.Text = [System.String]'What interface will be used for primary WAN on the Sonicwall? (eg. X1)'
#
#SecondaryWANPrompt_Label
#
$SecondaryWANPrompt_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]798))
$SecondaryWANPrompt_Label.Name = [System.String]'SecondaryWANPrompt_Label'
$SecondaryWANPrompt_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANPrompt_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]30))
$SecondaryWANPrompt_Label.TabIndex = [System.Int32]30
$SecondaryWANPrompt_Label.Text = [System.String]'Is there a secondary ISP/WAN?'
#
#2ndISPYes_RadioButton
#
$2ndISPYes_RadioButton.ForeColor = [System.Drawing.Color]::Green
$2ndISPYes_RadioButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]263,[System.Int32]804))
$2ndISPYes_RadioButton.Name = [System.String]'2ndISPYes_RadioButton'
$2ndISPYes_RadioButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPYes_RadioButton.TabIndex = [System.Int32]17
$2ndISPYes_RadioButton.Text = [System.String]'Yes'
$2ndISPYes_RadioButton.UseVisualStyleBackColor = $true
$2ndISPYes_RadioButton.add_MouseClick($Yes_Radio_MouseClick)
#
#2ndISPNo_RadioButton
#
$2ndISPNo_RadioButton.BackColor = [System.Drawing.SystemColors]::Info
$2ndISPNo_RadioButton.Checked = $true
$2ndISPNo_RadioButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$2ndISPNo_RadioButton.ForeColor = [System.Drawing.Color]::Red
$2ndISPNo_RadioButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]324,[System.Int32]804))
$2ndISPNo_RadioButton.Name = [System.String]'2ndISPNo_RadioButton'
$2ndISPNo_RadioButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$2ndISPNo_RadioButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPNo_RadioButton.TabIndex = [System.Int32]18
$2ndISPNo_RadioButton.TabStop = $true
$2ndISPNo_RadioButton.Text = [System.String]'No'
$2ndISPNo_RadioButton.UseVisualStyleBackColor = $true
$2ndISPNo_RadioButton.add_MouseClick($No_Radio_MouseClick)
#
#SiteCode_TextBox
#
$SiteCode_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SiteCode_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]68))
$SiteCode_TextBox.Name = [System.String]'SiteCode_TextBox'
$SiteCode_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SiteCode_TextBox.TabIndex = [System.Int32]1
#
#DomainName_TextBox
#
$DomainName_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$DomainName_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$DomainName_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DomainName_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DomainName_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DomainName_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]98))
$DomainName_TextBox.Name = [System.String]'DomainName_TextBox'
$DomainName_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DomainName_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$DomainName_TextBox.TabIndex = [System.Int32]2
#
#CurrentAdmin_TextBox
#
$CurrentAdmin_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$CurrentAdmin_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$CurrentAdmin_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$CurrentAdmin_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$CurrentAdmin_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$CurrentAdmin_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]128))
$CurrentAdmin_TextBox.Name = [System.String]'CurrentAdmin_TextBox'
$CurrentAdmin_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CurrentAdmin_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$CurrentAdmin_TextBox.TabIndex = [System.Int32]3
#
#NewAdminName_TextBox
#
$NewAdminName_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$NewAdminName_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$NewAdminName_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$NewAdminName_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$NewAdminName_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$NewAdminName_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]158))
$NewAdminName_TextBox.Name = [System.String]'NewAdminName_TextBox'
$NewAdminName_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$NewAdminName_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$NewAdminName_TextBox.TabIndex = [System.Int32]4
#
#CurrentPassword_TextBox
#
$CurrentPassword_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$CurrentPassword_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$CurrentPassword_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$CurrentPassword_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$CurrentPassword_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$CurrentPassword_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]193))
$CurrentPassword_TextBox.Name = [System.String]'CurrentPassword_TextBox'
$CurrentPassword_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CurrentPassword_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$CurrentPassword_TextBox.TabIndex = [System.Int32]5
#
#LANIP_TextBox
#
$LANIP_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$LANIP_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LANIP_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANIP_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LANIP_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LANIP_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]263))
$LANIP_TextBox.Name = [System.String]'LANIP_TextBox'
$LANIP_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANIP_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$LANIP_TextBox.TabIndex = [System.Int32]6
#
#LANSubnetMask_TextBox
#
$LANSubnetMask_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$LANSubnetMask_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LANSubnetMask_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANSubnetMask_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LANSubnetMask_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LANSubnetMask_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]323))
$LANSubnetMask_TextBox.Name = [System.String]'LANSubnetMask_TextBox'
$LANSubnetMask_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANSubnetMask_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$LANSubnetMask_TextBox.TabIndex = [System.Int32]7
#
#LANPort_TextBox
#
$LANPort_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$LANPort_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LANPort_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LANPort_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LANPort_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LANPort_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]383))
$LANPort_TextBox.Name = [System.String]'LANPort_TextBox'
$LANPort_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANPort_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$LANPort_TextBox.TabIndex = [System.Int32]8
#
#PrimaryLANDNS_TextBox
#
$PrimaryLANDNS_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryLANDNS_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryLANDNS_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryLANDNS_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryLANDNS_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryLANDNS_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]432))
$PrimaryLANDNS_TextBox.Name = [System.String]'PrimaryLANDNS_TextBox'
$PrimaryLANDNS_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANDNS_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryLANDNS_TextBox.TabIndex = [System.Int32]9
#
#SecondaryLANDNS_TextBox
#
$SecondaryLANDNS_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryLANDNS_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryLANDNS_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryLANDNS_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryLANDNS_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryLANDNS_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]492))
$SecondaryLANDNS_TextBox.Name = [System.String]'SecondaryLANDNS_TextBox'
$SecondaryLANDNS_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryLANDNS_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryLANDNS_TextBox.TabIndex = [System.Int32]10
#
#PrimaryWANIP_TextBox
#
$PrimaryWANIP_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANIP_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANIP_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANIP_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANIP_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANIP_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]587))
$PrimaryWANIP_TextBox.Name = [System.String]'PrimaryWANIP_TextBox'
$PrimaryWANIP_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANIP_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANIP_TextBox.TabIndex = [System.Int32]12
#
#PrimaryWANNetmask_TextBox
#
$PrimaryWANNetmask_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANNetmask_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANNetmask_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANNetmask_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANNetmask_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANNetmask_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]617))
$PrimaryWANNetmask_TextBox.Name = [System.String]'PrimaryWANNetmask_TextBox'
$PrimaryWANNetmask_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANNetmask_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANNetmask_TextBox.TabIndex = [System.Int32]13
#
#PrimaryWANGW_TextBox
#
$PrimaryWANGW_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANGW_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANGW_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANGW_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANGW_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANGW_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]647))
$PrimaryWANGW_TextBox.Name = [System.String]'PrimaryWANGW_TextBox'
$PrimaryWANGW_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANGW_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANGW_TextBox.TabIndex = [System.Int32]14
#
#PrimaryWANComment_TextBox
#
$PrimaryWANComment_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANComment_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANComment_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANComment_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANComment_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANComment_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]682))
$PrimaryWANComment_TextBox.Name = [System.String]'PrimaryWANComment_TextBox'
$PrimaryWANComment_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANComment_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANComment_TextBox.TabIndex = [System.Int32]15
#
#PrimaryWANPort_TextBox
#
$PrimaryWANPort_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANPort_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANPort_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANPort_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANPort_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANPort_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]742))
$PrimaryWANPort_TextBox.Name = [System.String]'PrimaryWANPort_TextBox'
$PrimaryWANPort_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPort_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANPort_TextBox.TabIndex = [System.Int32]16
#
#SecondaryWANIP_Label
#
$SecondaryWANIP_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANIP_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANIP_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANIP_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]887))
$SecondaryWANIP_Label.Name = [System.String]'SecondaryWANIP_Label'
$SecondaryWANIP_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANIP_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANIP_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$SecondaryWANIP_Label.TabIndex = [System.Int32]30
$SecondaryWANIP_Label.Text = [System.String]'Enter the secondary public IP address.'
$SecondaryWANIP_Label.Visible = $false
#
#SecondaryWANNetmask_Label
#
$SecondaryWANNetmask_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANNetmask_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANNetmask_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANNetmask_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]917))
$SecondaryWANNetmask_Label.Name = [System.String]'SecondaryWANNetmask_Label'
$SecondaryWANNetmask_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANNetmask_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANNetmask_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]30))
$SecondaryWANNetmask_Label.TabIndex = [System.Int32]30
$SecondaryWANNetmask_Label.Text = [System.String]'Enter the secondary public IP netmask.'
$SecondaryWANNetmask_Label.Visible = $false
#
#SecondaryWANGW_Label
#
$SecondaryWANGW_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANGW_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANGW_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANGW_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]947))
$SecondaryWANGW_Label.Name = [System.String]'SecondaryWANGW_Label'
$SecondaryWANGW_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANGW_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANGW_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]36))
$SecondaryWANGW_Label.TabIndex = [System.Int32]30
$SecondaryWANGW_Label.Text = [System.String]'Enter the gateway for the secondary public IP.'
$SecondaryWANGW_Label.Visible = $false
#
#SecondaryWANComment_Label
#
$SecondaryWANComment_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANComment_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANComment_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANComment_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]977))
$SecondaryWANComment_Label.Name = [System.String]'SecondaryWANComment_Label'
$SecondaryWANComment_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANComment_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANComment_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$SecondaryWANComment_Label.TabIndex = [System.Int32]30
$SecondaryWANComment_Label.Text = [System.String]'Enter the description for this connection. (eg. Comcast Coax)'
$SecondaryWANComment_Label.Visible = $false
#
#SecondaryWANPort_Label
#
$SecondaryWANPort_Label.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANPort_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANPort_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANPort_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]1037))
$SecondaryWANPort_Label.Name = [System.String]'SecondaryWANPort_Label'
$SecondaryWANPort_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANPort_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPort_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]355,[System.Int32]60))
$SecondaryWANPort_Label.TabIndex = [System.Int32]30
$SecondaryWANPort_Label.Text = [System.String]'What interface will be used for secondary LAN on the Sonicwall? (eg. X2)'
$SecondaryWANPort_Label.Visible = $false
#
#SecondaryWANIP_TextBox
#
$SecondaryWANIP_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANIP_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANIP_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANIP_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANIP_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANIP_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]887))
$SecondaryWANIP_TextBox.Name = [System.String]'SecondaryWANIP_TextBox'
$SecondaryWANIP_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANIP_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANIP_TextBox.TabIndex = [System.Int32]19
$SecondaryWANIP_TextBox.Visible = $false
#
#SecondaryWANNetmask_TextBox
#
$SecondaryWANNetmask_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANNetmask_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANNetmask_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANNetmask_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANNetmask_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANNetmask_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]917))
$SecondaryWANNetmask_TextBox.Name = [System.String]'SecondaryWANNetmask_TextBox'
$SecondaryWANNetmask_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANNetmask_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANNetmask_TextBox.TabIndex = [System.Int32]20
$SecondaryWANNetmask_TextBox.Visible = $false
#
#SecondaryWANGW_TextBox
#
$SecondaryWANGW_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANGW_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANGW_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANGW_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANGW_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANGW_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]947))
$SecondaryWANGW_TextBox.Name = [System.String]'SecondaryWANGW_TextBox'
$SecondaryWANGW_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANGW_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANGW_TextBox.TabIndex = [System.Int32]21
$SecondaryWANGW_TextBox.Visible = $false
#
#SecondaryWANComment_TextBox
#
$SecondaryWANComment_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANComment_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANComment_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANComment_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANComment_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANComment_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]977))
$SecondaryWANComment_TextBox.Name = [System.String]'SecondaryWANComment_TextBox'
$SecondaryWANComment_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANComment_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANComment_TextBox.TabIndex = [System.Int32]22
$SecondaryWANComment_TextBox.Visible = $false
#
#SecondaryWANPort_TextBox
#
$SecondaryWANPort_TextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANPort_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANPort_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANPort_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANPort_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANPort_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]1037))
$SecondaryWANPort_TextBox.Name = [System.String]'SecondaryWANPort_TextBox'
$SecondaryWANPort_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPort_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANPort_TextBox.TabIndex = [System.Int32]23
$SecondaryWANPort_TextBox.Visible = $false
#
#Initial_Configuration_Form
#
$Initial_Configuration_Form.AcceptButton = $Done_Button
$Initial_Configuration_Form.AutoScroll = $true
$Initial_Configuration_Form.BackColor = [System.Drawing.SystemColors]::Info
$Initial_Configuration_Form.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$Initial_Configuration_Form.CancelButton = $Cancel_Button
$Initial_Configuration_Form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]604,[System.Int32]841))
$Initial_Configuration_Form.Controls.Add($SiteCode_TextBox)
$Initial_Configuration_Form.Controls.Add($2ndISPYes_RadioButton)
$Initial_Configuration_Form.Controls.Add($SecondaryWANPrompt_Label)
$Initial_Configuration_Form.Controls.Add($DomainName_Label)
$Initial_Configuration_Form.Controls.Add($SiteCode_Label)
$Initial_Configuration_Form.Controls.Add($AdministrationTitle_Label)
$Initial_Configuration_Form.Controls.Add($Done_Button)
$Initial_Configuration_Form.Controls.Add($Cancel_Button)
$Initial_Configuration_Form.Controls.Add($ErrorsOutput_StatusStrip)
$Initial_Configuration_Form.Controls.Add($CurrentAdmin_Label)
$Initial_Configuration_Form.Controls.Add($NewAdminName_Label)
$Initial_Configuration_Form.Controls.Add($CurrentPassword_Label)
$Initial_Configuration_Form.Controls.Add($LANTitle_Label)
$Initial_Configuration_Form.Controls.Add($LANIP_Label)
$Initial_Configuration_Form.Controls.Add($LANSubnetMask_Label)
$Initial_Configuration_Form.Controls.Add($LANPort_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryLANDNS_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryLANDNS_Label)
$Initial_Configuration_Form.Controls.Add($WANTitle_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryWANIP_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryWANNetmask_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryWANGW_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryWANComment_Label)
$Initial_Configuration_Form.Controls.Add($PrimaryWANPort_Label)
$Initial_Configuration_Form.Controls.Add($2ndISPNo_RadioButton)
$Initial_Configuration_Form.Controls.Add($DomainName_TextBox)
$Initial_Configuration_Form.Controls.Add($CurrentAdmin_TextBox)
$Initial_Configuration_Form.Controls.Add($NewAdminName_TextBox)
$Initial_Configuration_Form.Controls.Add($CurrentPassword_TextBox)
$Initial_Configuration_Form.Controls.Add($LANIP_TextBox)
$Initial_Configuration_Form.Controls.Add($LANSubnetMask_TextBox)
$Initial_Configuration_Form.Controls.Add($LANPort_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryLANDNS_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryLANDNS_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryWANIP_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryWANNetmask_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryWANGW_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryWANComment_TextBox)
$Initial_Configuration_Form.Controls.Add($PrimaryWANPort_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryWANTitle_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANIP_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANNetmask_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANGW_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANComment_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANPort_Label)
$Initial_Configuration_Form.Controls.Add($SecondaryWANIP_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryWANNetmask_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryWANGW_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryWANComment_TextBox)
$Initial_Configuration_Form.Controls.Add($SecondaryWANPort_TextBox)
$Initial_Configuration_Form.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Initial_Configuration_Form.ForeColor = [System.Drawing.SystemColors]::InfoText
$Initial_Configuration_Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Initial_Configuration_Form.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Initial_Configuration_Form.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]620,[System.Int32]1400))
$Initial_Configuration_Form.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]620,[System.Int32]880))
$Initial_Configuration_Form.Name = [System.String]'Initial_Configuration_Form'
$Initial_Configuration_Form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Initial_Configuration_Form.Text = [System.String]'Sonicwall Initial Configuration'
$ErrorsOutput_StatusStrip.ResumeLayout($false)
$ErrorsOutput_StatusStrip.PerformLayout()
$Initial_Configuration_Form.ResumeLayout($false)
$Initial_Configuration_Form.PerformLayout()
Add-Member -InputObject $Initial_Configuration_Form -Name ErrorsOutput_StatusStrip -Value $ErrorsOutput_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name Cancel_Button -Value $Cancel_Button -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name Done_Button -Value $Done_Button -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name AdministrationTitle_Label -Value $AdministrationTitle_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SiteCode_Label -Value $SiteCode_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name DomainName_Label -Value $DomainName_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name CurrentAdmin_Label -Value $CurrentAdmin_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name NewAdminName_Label -Value $NewAdminName_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name CurrentPassword_Label -Value $CurrentPassword_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANTitle_Label -Value $LANTitle_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANIP_Label -Value $LANIP_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANSubnetMask_Label -Value $LANSubnetMask_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANPort_Label -Value $LANPort_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryLANDNS_Label -Value $PrimaryLANDNS_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryLANDNS_Label -Value $SecondaryLANDNS_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name WANTitle_Label -Value $WANTitle_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANIP_Label -Value $PrimaryWANIP_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANNetmask_Label -Value $PrimaryWANNetmask_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANGW_Label -Value $PrimaryWANGW_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANComment_Label -Value $PrimaryWANComment_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANPort_Label -Value $PrimaryWANPort_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANPrompt_Label -Value $SecondaryWANPrompt_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name 2ndISPYes_RadioButton -Value $2ndISPYes_RadioButton -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name 2ndISPNo_RadioButton -Value $2ndISPNo_RadioButton -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SiteCode_TextBox -Value $SiteCode_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name DomainName_TextBox -Value $DomainName_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name CurrentAdmin_TextBox -Value $CurrentAdmin_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name NewAdminName_TextBox -Value $NewAdminName_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name CurrentPassword_TextBox -Value $CurrentPassword_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANIP_TextBox -Value $LANIP_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANSubnetMask_TextBox -Value $LANSubnetMask_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name LANPort_TextBox -Value $LANPort_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryLANDNS_TextBox -Value $PrimaryLANDNS_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryLANDNS_TextBox -Value $SecondaryLANDNS_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANIP_TextBox -Value $PrimaryWANIP_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANNetmask_TextBox -Value $PrimaryWANNetmask_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANGW_TextBox -Value $PrimaryWANGW_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANComment_TextBox -Value $PrimaryWANComment_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name PrimaryWANPort_TextBox -Value $PrimaryWANPort_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANTitle_Label -Value $SecondaryWANTitle_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANIP_Label -Value $SecondaryWANIP_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANNetmask_Label -Value $SecondaryWANNetmask_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANGW_Label -Value $SecondaryWANGW_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANComment_Label -Value $SecondaryWANComment_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANPort_Label -Value $SecondaryWANPort_Label -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANIP_TextBox -Value $SecondaryWANIP_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANNetmask_TextBox -Value $SecondaryWANNetmask_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANGW_TextBox -Value $SecondaryWANGW_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANComment_TextBox -Value $SecondaryWANComment_TextBox -MemberType NoteProperty
Add-Member -InputObject $Initial_Configuration_Form -Name SecondaryWANPort_TextBox -Value $SecondaryWANPort_TextBox -MemberType NoteProperty
}
. InitializeComponent
