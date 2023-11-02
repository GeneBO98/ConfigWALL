$Init_Config_Form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$SiteCodeTextBox = $null
[System.Windows.Forms.Label]$SiteCode = $null
[System.Windows.Forms.Label]$DomainName = $null
[System.Windows.Forms.TextBox]$DomainNameTextBox = $null
[System.Windows.Forms.Label]$AdminName = $null
[System.Windows.Forms.Label]$NewAdminName = $null
[System.Windows.Forms.Label]$OldPassword = $null
[System.Windows.Forms.TextBox]$CurrentAdminTextBox = $null
[System.Windows.Forms.TextBox]$NewAdminTextBox = $null
[System.Windows.Forms.TextBox]$CurrentPasswordTextBox = $null
[System.Windows.Forms.Button]$Done = $null
[System.Windows.Forms.Button]$Cancel = $null
[System.Windows.Forms.Label]$CheckDownloadsLabel = $null
[System.Windows.Forms.Label]$AdministrationTitle = $null
[System.Windows.Forms.Label]$PrimeLanTitle = $null
[System.Windows.Forms.Label]$PrimaryLANPortLabel = $null
[System.Windows.Forms.Label]$PrimaryLANLabel = $null
[System.Windows.Forms.Label]$PrimaryLANNetmaskLabel = $null
[System.Windows.Forms.Label]$WANTitle = $null
[System.Windows.Forms.TextBox]$PrimaryLANTextBox = $null
[System.Windows.Forms.TextBox]$PrimaryLANNetmaskTextBox = $null
[System.Windows.Forms.TextBox]$PrimaryLANPortTextBox = $null
[System.Windows.Forms.Label]$WANPrimaryLabel = $null
[System.Windows.Forms.Label]$WANPrimaryGWLabel = $null
[System.Windows.Forms.Label]$PWANNetmaskLabel = $null
[System.Windows.Forms.Label]$WANPrimaryCommentLabel = $null
[System.Windows.Forms.Label]$PrimaryWANPortLabel = $null
[System.Windows.Forms.Label]$SWANPromptLabel = $null
[System.Windows.Forms.RadioButton]$2ndISPYes = $null
[System.Windows.Forms.RadioButton]$2ndISPNo = $null
[System.Windows.Forms.Label]$SWANTitle = $null
[System.Windows.Forms.Label]$WANSecondaryLabel = $null
[System.Windows.Forms.Label]$SWANNetmaskLabel = $null
[System.Windows.Forms.Label]$WANSecondaryGWLabel = $null
[System.Windows.Forms.Label]$WANSecondaryCommentLabel = $null
[System.Windows.Forms.Control]$Control1 = $null
[System.Windows.Forms.Label]$SecondaryWANPortLabel = $null
[System.Windows.Forms.TextBox]$WANPrimaryTextBox = $null
[System.Windows.Forms.TextBox]$PWANNetmaskTextBox = $null
[System.Windows.Forms.TextBox]$WANPrimaryGWTextBox = $null
[System.Windows.Forms.TextBox]$WANPrimaryCommentTextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANPortTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryTextBox = $null
[System.Windows.Forms.TextBox]$SWANNetmaskTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryGWTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryCommentTextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANPortTextBox = $null
[System.Windows.Forms.Label]$CheckeDownloadsLabel = $null
[System.Windows.Forms.Button]$Done1 = $null
[System.Windows.Forms.Button]$Cancel1 = $null
[System.Windows.Forms.Label]$DNSPrimaryLabel = $null
[System.Windows.Forms.TextBox]$DNSPrimaryTextBox = $null
[System.Windows.Forms.Label]$DNSSecondaryLabel = $null
[System.Windows.Forms.TextBox]$DNSSecondaryTextBox = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'init_config.resources.ps1')
$SiteCodeTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SiteCode = (New-Object -TypeName System.Windows.Forms.Label)
$DomainName = (New-Object -TypeName System.Windows.Forms.Label)
$DomainNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$AdminName = (New-Object -TypeName System.Windows.Forms.Label)
$NewAdminName = (New-Object -TypeName System.Windows.Forms.Label)
$OldPassword = (New-Object -TypeName System.Windows.Forms.Label)
$CurrentAdminTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$NewAdminTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$CurrentPasswordTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Done = (New-Object -TypeName System.Windows.Forms.Button)
$Cancel = (New-Object -TypeName System.Windows.Forms.Button)
$CheckDownloadsLabel = (New-Object -TypeName System.Windows.Forms.Label)
$AdministrationTitle = (New-Object -TypeName System.Windows.Forms.Label)
$PrimeLanTitle = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANPortLabel = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANLabel = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANNetmaskLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANTitle = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryLANNetmaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryLANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANPrimaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANPrimaryGWLabel = (New-Object -TypeName System.Windows.Forms.Label)
$PWANNetmaskLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANPrimaryCommentLabel = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANPortLabel = (New-Object -TypeName System.Windows.Forms.Label)
$SWANPromptLabel = (New-Object -TypeName System.Windows.Forms.Label)
$2ndISPYes = (New-Object -TypeName System.Windows.Forms.RadioButton)
$2ndISPNo = (New-Object -TypeName System.Windows.Forms.RadioButton)
$SWANTitle = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$SWANNetmaskLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondaryGWLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondaryCommentLabel = (New-Object -TypeName System.Windows.Forms.Label)
$Control1 = (New-Object -TypeName System.Windows.Forms.Control)
$SecondaryWANPortLabel = (New-Object -TypeName System.Windows.Forms.Label)
$WANPrimaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PWANNetmaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANPrimaryGWTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANPrimaryCommentTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SWANNetmaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryGWTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryCommentTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$CheckeDownloadsLabel = (New-Object -TypeName System.Windows.Forms.Label)
$Done1 = (New-Object -TypeName System.Windows.Forms.Button)
$Cancel1 = (New-Object -TypeName System.Windows.Forms.Button)
$DNSPrimaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DNSPrimaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DNSSecondaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DNSSecondaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Init_Config_Form.SuspendLayout()
#
#SiteCodeTextBox
#
$SiteCodeTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]89))
$SiteCodeTextBox.Name = [System.String]'SiteCodeTextBox'
$SiteCodeTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$SiteCodeTextBox.TabIndex = [System.Int32]0
#
#SiteCode
#
$SiteCode.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SiteCode.ForeColor = [System.Drawing.Color]::Blue
$SiteCode.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]89))
$SiteCode.Name = [System.String]'SiteCode'
$SiteCode.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SiteCode.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]30))
$SiteCode.TabIndex = [System.Int32]1
$SiteCode.Text = [System.String]'What is the site code? Use capital letters.'
#
#DomainName
#
$DomainName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$DomainName.ForeColor = [System.Drawing.Color]::Blue
$DomainName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]119))
$DomainName.Name = [System.String]'DomainName'
$DomainName.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$DomainName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]30))
$DomainName.TabIndex = [System.Int32]2
$DomainName.Text = [System.String]'Enter the site domain name.'
$DomainName.add_Click($DomainName_Click)
#
#DomainNameTextBox
#
$DomainNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]119))
$DomainNameTextBox.Name = [System.String]'DomainNameTextBox'
$DomainNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$DomainNameTextBox.TabIndex = [System.Int32]3
#
#AdminName
#
$AdminName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdminName.ForeColor = [System.Drawing.Color]::Blue
$AdminName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]149))
$AdminName.Name = [System.String]'AdminName'
$AdminName.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$AdminName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]30))
$AdminName.TabIndex = [System.Int32]4
$AdminName.Text = [System.String]'Enter the current admin username.'
#
#NewAdminName
#
$NewAdminName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$NewAdminName.ForeColor = [System.Drawing.Color]::Blue
$NewAdminName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]179))
$NewAdminName.Name = [System.String]'NewAdminName'
$NewAdminName.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$NewAdminName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$NewAdminName.TabIndex = [System.Int32]5
$NewAdminName.Text = [System.String]'Enter the new admin username. (eg. gtsadmin)'
#
#OldPassword
#
$OldPassword.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$OldPassword.ForeColor = [System.Drawing.Color]::Blue
$OldPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]214))
$OldPassword.Name = [System.String]'OldPassword'
$OldPassword.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$OldPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$OldPassword.TabIndex = [System.Int32]6
$OldPassword.Text = [System.String]'Enter the current password. (eg. password)'
$OldPassword.add_Click($OldPassword_Click)
#
#CurrentAdminTextBox
#
$CurrentAdminTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]149))
$CurrentAdminTextBox.Name = [System.String]'CurrentAdminTextBox'
$CurrentAdminTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$CurrentAdminTextBox.TabIndex = [System.Int32]7
$CurrentAdminTextBox.add_TextChanged($TextBox3_TextChanged)
#
#NewAdminTextBox
#
$NewAdminTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]179))
$NewAdminTextBox.Name = [System.String]'NewAdminTextBox'
$NewAdminTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$NewAdminTextBox.TabIndex = [System.Int32]8
#
#CurrentPasswordTextBox
#
$CurrentPasswordTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]214))
$CurrentPasswordTextBox.Name = [System.String]'CurrentPasswordTextBox'
$CurrentPasswordTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$CurrentPasswordTextBox.TabIndex = [System.Int32]9
#
#Done
#
$Done.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::None
$Done.DialogResult = [System.Windows.Forms.DialogResult]::OK
$Done.ForeColor = [System.Drawing.Color]::DarkGreen
$Done.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]392,[System.Int32]1372))
$Done.Name = [System.String]'Done'
$Done.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done.TabIndex = [System.Int32]10
$Done.Text = [System.String]'Done'
$Done.UseVisualStyleBackColor = $false
$Done.add_Click($Done_Click)
$Done.add_MouseClick($Done_MouseClick)
#
#Cancel
#
$Cancel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Cancel.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$Cancel.ForeColor = [System.Drawing.Color]::Red
$Cancel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]491,[System.Int32]1372))
$Cancel.Name = [System.String]'Cancel'
$Cancel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Cancel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel.TabIndex = [System.Int32]10
$Cancel.Text = [System.String]'Cancel'
$Cancel.UseVisualStyleBackColor = $false
#
#CheckDownloadsLabel
#
$CheckDownloadsLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$CheckDownloadsLabel.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$CheckDownloadsLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CheckDownloadsLabel.ForeColor = [System.Drawing.Color]::Maroon
$CheckDownloadsLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]1375))
$CheckDownloadsLabel.Name = [System.String]'CheckDownloadsLabel'
$CheckDownloadsLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$CheckDownloadsLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]320,[System.Int32]30))
$CheckDownloadsLabel.TabIndex = [System.Int32]11
$CheckDownloadsLabel.Text = [System.String]'Check your Downloads folder to verify output.'
$CheckDownloadsLabel.add_MouseDoubleClick($CheckDown_DC)
#
#AdministrationTitle
#
$AdministrationTitle.BackColor = [System.Drawing.SystemColors]::Menu
$AdministrationTitle.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$AdministrationTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdministrationTitle.ForeColor = [System.Drawing.Color]::Black
$AdministrationTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]54))
$AdministrationTitle.Name = [System.String]'AdministrationTitle'
$AdministrationTitle.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$AdministrationTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$AdministrationTitle.TabIndex = [System.Int32]12
$AdministrationTitle.Text = [System.String]'Administration'
#
#PrimeLanTitle
#
$PrimeLanTitle.BackColor = [System.Drawing.SystemColors]::Menu
$PrimeLanTitle.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$PrimeLanTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$PrimeLanTitle.ForeColor = [System.Drawing.Color]::Black
$PrimeLanTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]258))
$PrimeLanTitle.Name = [System.String]'PrimeLanTitle'
$PrimeLanTitle.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimeLanTitle.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimeLanTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$PrimeLanTitle.TabIndex = [System.Int32]12
$PrimeLanTitle.Text = [System.String]'LAN'
#
#PrimaryLANPortLabel
#
$PrimaryLANPortLabel.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryLANPortLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryLANPortLabel.ForeColor = [System.Drawing.Color]::Blue
$PrimaryLANPortLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]413))
$PrimaryLANPortLabel.Name = [System.String]'PrimaryLANPortLabel'
$PrimaryLANPortLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryLANPortLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANPortLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$PrimaryLANPortLabel.TabIndex = [System.Int32]6
$PrimaryLANPortLabel.Text = [System.String]'What interface will be used for primary LAN on the Sonicwall? (ie. X0)'
#
#PrimaryLANLabel
#
$PrimaryLANLabel.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryLANLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryLANLabel.ForeColor = [System.Drawing.Color]::Blue
$PrimaryLANLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]293))
$PrimaryLANLabel.Name = [System.String]'PrimaryLANLabel'
$PrimaryLANLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryLANLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$PrimaryLANLabel.TabIndex = [System.Int32]6
$PrimaryLANLabel.Text = [System.String]'Enter the primary LAN gateway IP in the following format (ie. 010.110.050.001)'
#
#PrimaryLANNetmaskLabel
#
$PrimaryLANNetmaskLabel.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryLANNetmaskLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryLANNetmaskLabel.ForeColor = [System.Drawing.Color]::Blue
$PrimaryLANNetmaskLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]353))
$PrimaryLANNetmaskLabel.Name = [System.String]'PrimaryLANNetmaskLabel'
$PrimaryLANNetmaskLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryLANNetmaskLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANNetmaskLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$PrimaryLANNetmaskLabel.TabIndex = [System.Int32]6
$PrimaryLANNetmaskLabel.Text = [System.String]'Enter the subnet mask for primary LAN interface (ie. 255.255.255.0)'
#
#WANTitle
#
$WANTitle.BackColor = [System.Drawing.SystemColors]::Menu
$WANTitle.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$WANTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$WANTitle.ForeColor = [System.Drawing.Color]::Black
$WANTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]588))
$WANTitle.Name = [System.String]'WANTitle'
$WANTitle.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANTitle.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$WANTitle.TabIndex = [System.Int32]12
$WANTitle.Text = [System.String]'WAN'
#
#PrimaryLANTextBox
#
$PrimaryLANTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryLANTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$PrimaryLANTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryLANTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryLANTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]293))
$PrimaryLANTextBox.Name = [System.String]'PrimaryLANTextBox'
$PrimaryLANTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$PrimaryLANTextBox.TabIndex = [System.Int32]9
#
#PrimaryLANNetmaskTextBox
#
$PrimaryLANNetmaskTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryLANNetmaskTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$PrimaryLANNetmaskTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryLANNetmaskTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryLANNetmaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]353))
$PrimaryLANNetmaskTextBox.Name = [System.String]'PrimaryLANNetmaskTextBox'
$PrimaryLANNetmaskTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANNetmaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$PrimaryLANNetmaskTextBox.TabIndex = [System.Int32]9
#
#PrimaryLANPortTextBox
#
$PrimaryLANPortTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryLANPortTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$PrimaryLANPortTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryLANPortTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryLANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]413))
$PrimaryLANPortTextBox.Name = [System.String]'PrimaryLANPortTextBox'
$PrimaryLANPortTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryLANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$PrimaryLANPortTextBox.TabIndex = [System.Int32]9
#
#WANPrimaryLabel
#
$WANPrimaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANPrimaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANPrimaryLabel.ForeColor = [System.Drawing.Color]::Blue
$WANPrimaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]623))
$WANPrimaryLabel.Name = [System.String]'WANPrimaryLabel'
$WANPrimaryLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$WANPrimaryLabel.TabIndex = [System.Int32]6
$WANPrimaryLabel.Text = [System.String]'Enter the primary public IP address.'
#
#WANPrimaryGWLabel
#
$WANPrimaryGWLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANPrimaryGWLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANPrimaryGWLabel.ForeColor = [System.Drawing.Color]::Blue
$WANPrimaryGWLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]693))
$WANPrimaryGWLabel.Name = [System.String]'WANPrimaryGWLabel'
$WANPrimaryGWLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimaryGWLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryGWLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$WANPrimaryGWLabel.TabIndex = [System.Int32]6
$WANPrimaryGWLabel.Text = [System.String]'Enter the gateway for the primary Public IP.'
#
#PWANNetmaskLabel
#
$PWANNetmaskLabel.BackColor = [System.Drawing.SystemColors]::Info
$PWANNetmaskLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PWANNetmaskLabel.ForeColor = [System.Drawing.Color]::Blue
$PWANNetmaskLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]658))
$PWANNetmaskLabel.Name = [System.String]'PWANNetmaskLabel'
$PWANNetmaskLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PWANNetmaskLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PWANNetmaskLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$PWANNetmaskLabel.TabIndex = [System.Int32]6
$PWANNetmaskLabel.Text = [System.String]'Enter the primary public IP address netmask.'
#
#WANPrimaryCommentLabel
#
$WANPrimaryCommentLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANPrimaryCommentLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANPrimaryCommentLabel.ForeColor = [System.Drawing.Color]::Blue
$WANPrimaryCommentLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]728))
$WANPrimaryCommentLabel.Name = [System.String]'WANPrimaryCommentLabel'
$WANPrimaryCommentLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimaryCommentLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryCommentLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$WANPrimaryCommentLabel.TabIndex = [System.Int32]6
$WANPrimaryCommentLabel.Text = [System.String]'Enter the description for this connection. (ie. Comcast Coax)'
#
#PrimaryWANPortLabel
#
$PrimaryWANPortLabel.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANPortLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANPortLabel.ForeColor = [System.Drawing.Color]::Blue
$PrimaryWANPortLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]788))
$PrimaryWANPortLabel.Name = [System.String]'PrimaryWANPortLabel'
$PrimaryWANPortLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANPortLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPortLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$PrimaryWANPortLabel.TabIndex = [System.Int32]6
$PrimaryWANPortLabel.Text = [System.String]'What interface will be used for primary WAN on the Sonicwall? (ie. X1)'
#
#SWANPromptLabel
#
$SWANPromptLabel.BackColor = [System.Drawing.SystemColors]::Info
$SWANPromptLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SWANPromptLabel.ForeColor = [System.Drawing.Color]::Blue
$SWANPromptLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]848))
$SWANPromptLabel.Name = [System.String]'SWANPromptLabel'
$SWANPromptLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANPromptLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANPromptLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$SWANPromptLabel.TabIndex = [System.Int32]6
$SWANPromptLabel.Text = [System.String]'Is there a secondary ISP?'
#
#2ndISPYes
#
$2ndISPYes.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$2ndISPYes.ForeColor = [System.Drawing.Color]::Green
$2ndISPYes.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]210,[System.Int32]851))
$2ndISPYes.Name = [System.String]'2ndISPYes'
$2ndISPYes.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPYes.TabIndex = [System.Int32]5
$2ndISPYes.Text = [System.String]'Yes'
$2ndISPYes.UseVisualStyleBackColor = $true
$2ndISPYes.add_CheckedChanged($Yes_Checked)
$2ndISPYes.add_MouseClick($Yes_Clicked)
#
#2ndISPNo
#
$2ndISPNo.BackColor = [System.Drawing.SystemColors]::Info
$2ndISPNo.Checked = $true
$2ndISPNo.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$2ndISPNo.ForeColor = [System.Drawing.Color]::Red
$2ndISPNo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]271,[System.Int32]851))
$2ndISPNo.Name = [System.String]'2ndISPNo'
$2ndISPNo.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$2ndISPNo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPNo.TabIndex = [System.Int32]5
$2ndISPNo.TabStop = $true
$2ndISPNo.Text = [System.String]'No'
$2ndISPNo.UseVisualStyleBackColor = $true
$2ndISPNo.add_CheckedChanged($No_Checked)
$2ndISPNo.add_MouseClick($No_Clicked)
#
#SWANTitle
#
$SWANTitle.BackColor = [System.Drawing.SystemColors]::Menu
$SWANTitle.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$SWANTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SWANTitle.ForeColor = [System.Drawing.Color]::Black
$SWANTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]883))
$SWANTitle.Name = [System.String]'SWANTitle'
$SWANTitle.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANTitle.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$SWANTitle.TabIndex = [System.Int32]12
$SWANTitle.Text = [System.String]'Secondary WAN'
$SWANTitle.Visible = $false
#
#WANSecondaryLabel
#
$WANSecondaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANSecondaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryLabel.ForeColor = [System.Drawing.Color]::Blue
$WANSecondaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]928))
$WANSecondaryLabel.Name = [System.String]'WANSecondaryLabel'
$WANSecondaryLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$WANSecondaryLabel.TabIndex = [System.Int32]6
$WANSecondaryLabel.Text = [System.String]'Enter the secondary public IP address.'
$WANSecondaryLabel.Visible = $false
#
#SWANNetmaskLabel
#
$SWANNetmaskLabel.BackColor = [System.Drawing.SystemColors]::Info
$SWANNetmaskLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SWANNetmaskLabel.ForeColor = [System.Drawing.Color]::Blue
$SWANNetmaskLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]960))
$SWANNetmaskLabel.Name = [System.String]'SWANNetmaskLabel'
$SWANNetmaskLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANNetmaskLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANNetmaskLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$SWANNetmaskLabel.TabIndex = [System.Int32]6
$SWANNetmaskLabel.Text = [System.String]'Enter the secondary public IP netmask.'
$SWANNetmaskLabel.Visible = $false
#
#WANSecondaryGWLabel
#
$WANSecondaryGWLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANSecondaryGWLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryGWLabel.ForeColor = [System.Drawing.Color]::Blue
$WANSecondaryGWLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]1000))
$WANSecondaryGWLabel.Name = [System.String]'WANSecondaryGWLabel'
$WANSecondaryGWLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondaryGWLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryGWLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]35))
$WANSecondaryGWLabel.TabIndex = [System.Int32]6
$WANSecondaryGWLabel.Text = [System.String]'Enter the gateway for the secondary Public IP.'
$WANSecondaryGWLabel.Visible = $false
#
#WANSecondaryCommentLabel
#
$WANSecondaryCommentLabel.BackColor = [System.Drawing.SystemColors]::Info
$WANSecondaryCommentLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryCommentLabel.ForeColor = [System.Drawing.Color]::Blue
$WANSecondaryCommentLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]1035))
$WANSecondaryCommentLabel.Name = [System.String]'WANSecondaryCommentLabel'
$WANSecondaryCommentLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondaryCommentLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryCommentLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$WANSecondaryCommentLabel.TabIndex = [System.Int32]6
$WANSecondaryCommentLabel.Text = [System.String]'Enter the description for this connection. (ie. Comcast Coax)'
$WANSecondaryCommentLabel.Visible = $false
#
#Control1
#
$Control1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$Control1.Name = [System.String]'Control1'
$Control1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]0))
$Control1.TabIndex = [System.Int32]13
#
#SecondaryWANPortLabel
#
$SecondaryWANPortLabel.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANPortLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANPortLabel.ForeColor = [System.Drawing.Color]::Blue
$SecondaryWANPortLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]1095))
$SecondaryWANPortLabel.Name = [System.String]'SecondaryWANPortLabel'
$SecondaryWANPortLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANPortLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPortLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$SecondaryWANPortLabel.TabIndex = [System.Int32]6
$SecondaryWANPortLabel.Text = [System.String]'What interface will be used for secondary LAN on the Sonicwall? (ie. X2)'
$SecondaryWANPortLabel.Visible = $false
#
#WANPrimaryTextBox
#
$WANPrimaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANPrimaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANPrimaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANPrimaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANPrimaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]623))
$WANPrimaryTextBox.Name = [System.String]'WANPrimaryTextBox'
$WANPrimaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANPrimaryTextBox.TabIndex = [System.Int32]9
#
#PWANNetmaskTextBox
#
$PWANNetmaskTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PWANNetmaskTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$PWANNetmaskTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PWANNetmaskTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PWANNetmaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]658))
$PWANNetmaskTextBox.Name = [System.String]'PWANNetmaskTextBox'
$PWANNetmaskTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PWANNetmaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$PWANNetmaskTextBox.TabIndex = [System.Int32]9
#
#WANPrimaryGWTextBox
#
$WANPrimaryGWTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANPrimaryGWTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANPrimaryGWTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANPrimaryGWTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANPrimaryGWTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]693))
$WANPrimaryGWTextBox.Name = [System.String]'WANPrimaryGWTextBox'
$WANPrimaryGWTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryGWTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANPrimaryGWTextBox.TabIndex = [System.Int32]9
#
#WANPrimaryCommentTextBox
#
$WANPrimaryCommentTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANPrimaryCommentTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANPrimaryCommentTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANPrimaryCommentTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANPrimaryCommentTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]728))
$WANPrimaryCommentTextBox.Name = [System.String]'WANPrimaryCommentTextBox'
$WANPrimaryCommentTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryCommentTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANPrimaryCommentTextBox.TabIndex = [System.Int32]9
#
#PrimaryWANPortTextBox
#
$PrimaryWANPortTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANPortTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$PrimaryWANPortTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANPortTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]788))
$PrimaryWANPortTextBox.Name = [System.String]'PrimaryWANPortTextBox'
$PrimaryWANPortTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$PrimaryWANPortTextBox.TabIndex = [System.Int32]9
#
#WANSecondaryTextBox
#
$WANSecondaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANSecondaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]928))
$WANSecondaryTextBox.Name = [System.String]'WANSecondaryTextBox'
$WANSecondaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANSecondaryTextBox.TabIndex = [System.Int32]9
$WANSecondaryTextBox.Visible = $false
#
#SWANNetmaskTextBox
#
$SWANNetmaskTextBox.BackColor = [System.Drawing.SystemColors]::Window
$SWANNetmaskTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$SWANNetmaskTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SWANNetmaskTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SWANNetmaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]960))
$SWANNetmaskTextBox.Name = [System.String]'SWANNetmaskTextBox'
$SWANNetmaskTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANNetmaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$SWANNetmaskTextBox.TabIndex = [System.Int32]9
$SWANNetmaskTextBox.Visible = $false
#
#WANSecondaryGWTextBox
#
$WANSecondaryGWTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryGWTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANSecondaryGWTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryGWTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryGWTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]1000))
$WANSecondaryGWTextBox.Name = [System.String]'WANSecondaryGWTextBox'
$WANSecondaryGWTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryGWTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANSecondaryGWTextBox.TabIndex = [System.Int32]9
$WANSecondaryGWTextBox.Visible = $false
#
#WANSecondaryCommentTextBox
#
$WANSecondaryCommentTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryCommentTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$WANSecondaryCommentTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryCommentTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryCommentTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]1035))
$WANSecondaryCommentTextBox.Name = [System.String]'WANSecondaryCommentTextBox'
$WANSecondaryCommentTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryCommentTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$WANSecondaryCommentTextBox.TabIndex = [System.Int32]9
$WANSecondaryCommentTextBox.Visible = $false
#
#SecondaryWANPortTextBox
#
$SecondaryWANPortTextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANPortTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$SecondaryWANPortTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANPortTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]1095))
$SecondaryWANPortTextBox.Name = [System.String]'SecondaryWANPortTextBox'
$SecondaryWANPortTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$SecondaryWANPortTextBox.TabIndex = [System.Int32]9
$SecondaryWANPortTextBox.Visible = $false
#
#CheckeDownloadsLabel
#
$CheckeDownloadsLabel.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$CheckeDownloadsLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CheckeDownloadsLabel.ForeColor = [System.Drawing.Color]::Maroon
$CheckeDownloadsLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]9))
$CheckeDownloadsLabel.Name = [System.String]'CheckeDownloadsLabel'
$CheckeDownloadsLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]301,[System.Int32]23))
$CheckeDownloadsLabel.TabIndex = [System.Int32]14
$CheckeDownloadsLabel.Text = [System.String]'Check your Downloads folder to verify output.'
$CheckeDownloadsLabel.add_MouseDoubleClick($CheckDown_DC)
#
#Done1
#
$Done1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done1.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done1.DialogResult = [System.Windows.Forms.DialogResult]::OK
$Done1.ForeColor = [System.Drawing.Color]::DarkGreen
$Done1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]9))
$Done1.Name = [System.String]'Done1'
$Done1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done1.TabIndex = [System.Int32]15
$Done1.Text = [System.String]'Done'
$Done1.UseVisualStyleBackColor = $false
$Done1.add_MouseClick($Done_MouseClick)
#
#Cancel1
#
$Cancel1.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel1.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel1.ForeColor = [System.Drawing.Color]::Red
$Cancel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]508,[System.Int32]9))
$Cancel1.Name = [System.String]'Cancel1'
$Cancel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel1.TabIndex = [System.Int32]16
$Cancel1.Text = [System.String]'Cancel'
$Cancel1.UseVisualStyleBackColor = $false
#
#DNSPrimaryLabel
#
$DNSPrimaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$DNSPrimaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSPrimaryLabel.ForeColor = [System.Drawing.Color]::Blue
$DNSPrimaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]473))
$DNSPrimaryLabel.Name = [System.String]'DNSPrimaryLabel'
$DNSPrimaryLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$DNSPrimaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSPrimaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$DNSPrimaryLabel.TabIndex = [System.Int32]6
$DNSPrimaryLabel.Text = [System.String]'Enter the IP address of the local domain controller to be used for Primary DNS'
#
#DNSPrimaryTextBox
#
$DNSPrimaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$DNSPrimaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$DNSPrimaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DNSPrimaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DNSPrimaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]473))
$DNSPrimaryTextBox.Name = [System.String]'DNSPrimaryTextBox'
$DNSPrimaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSPrimaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$DNSPrimaryTextBox.TabIndex = [System.Int32]9
#
#DNSSecondaryLabel
#
$DNSSecondaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$DNSSecondaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSSecondaryLabel.ForeColor = [System.Drawing.Color]::Blue
$DNSSecondaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]528))
$DNSSecondaryLabel.Name = [System.String]'DNSSecondaryLabel'
$DNSSecondaryLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$DNSSecondaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSSecondaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]60))
$DNSSecondaryLabel.TabIndex = [System.Int32]6
$DNSSecondaryLabel.Text = [System.String]'Enter the IP address of the PDC for secondary DNS'
#
#DNSSecondaryTextBox
#
$DNSSecondaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$DNSSecondaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75))
$DNSSecondaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DNSSecondaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DNSSecondaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]528))
$DNSSecondaryTextBox.Name = [System.String]'DNSSecondaryTextBox'
$DNSSecondaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSSecondaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$DNSSecondaryTextBox.TabIndex = [System.Int32]9
#
#Init_Config_Form
#
$Init_Config_Form.AcceptButton = $Done1
$Init_Config_Form.AccessibleRole = [System.Windows.Forms.AccessibleRole]::Application
$Init_Config_Form.AutoScroll = $true
$Init_Config_Form.BackColor = [System.Drawing.SystemColors]::Info
$Init_Config_Form.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$Init_Config_Form.CancelButton = $Cancel1
$Init_Config_Form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]610,[System.Int32]882))
$Init_Config_Form.Controls.Add($Cancel1)
$Init_Config_Form.Controls.Add($Done1)
$Init_Config_Form.Controls.Add($CheckeDownloadsLabel)
$Init_Config_Form.Controls.Add($2ndISPYes)
$Init_Config_Form.Controls.Add($AdministrationTitle)
$Init_Config_Form.Controls.Add($CheckDownloadsLabel)
$Init_Config_Form.Controls.Add($Done)
$Init_Config_Form.Controls.Add($CurrentPasswordTextBox)
$Init_Config_Form.Controls.Add($NewAdminTextBox)
$Init_Config_Form.Controls.Add($CurrentAdminTextBox)
$Init_Config_Form.Controls.Add($OldPassword)
$Init_Config_Form.Controls.Add($NewAdminName)
$Init_Config_Form.Controls.Add($AdminName)
$Init_Config_Form.Controls.Add($DomainNameTextBox)
$Init_Config_Form.Controls.Add($DomainName)
$Init_Config_Form.Controls.Add($SiteCode)
$Init_Config_Form.Controls.Add($SiteCodeTextBox)
$Init_Config_Form.Controls.Add($Cancel)
$Init_Config_Form.Controls.Add($PrimeLanTitle)
$Init_Config_Form.Controls.Add($PrimaryLANPortLabel)
$Init_Config_Form.Controls.Add($PrimaryLANLabel)
$Init_Config_Form.Controls.Add($PrimaryLANNetmaskLabel)
$Init_Config_Form.Controls.Add($WANTitle)
$Init_Config_Form.Controls.Add($PrimaryLANTextBox)
$Init_Config_Form.Controls.Add($PrimaryLANNetmaskTextBox)
$Init_Config_Form.Controls.Add($PrimaryLANPortTextBox)
$Init_Config_Form.Controls.Add($WANPrimaryLabel)
$Init_Config_Form.Controls.Add($WANPrimaryGWLabel)
$Init_Config_Form.Controls.Add($PWANNetmaskLabel)
$Init_Config_Form.Controls.Add($WANPrimaryCommentLabel)
$Init_Config_Form.Controls.Add($PrimaryWANPortLabel)
$Init_Config_Form.Controls.Add($SWANPromptLabel)
$Init_Config_Form.Controls.Add($2ndISPNo)
$Init_Config_Form.Controls.Add($SWANTitle)
$Init_Config_Form.Controls.Add($WANSecondaryLabel)
$Init_Config_Form.Controls.Add($SWANNetmaskLabel)
$Init_Config_Form.Controls.Add($WANSecondaryGWLabel)
$Init_Config_Form.Controls.Add($WANSecondaryCommentLabel)
$Init_Config_Form.Controls.Add($Control1)
$Init_Config_Form.Controls.Add($SecondaryWANPortLabel)
$Init_Config_Form.Controls.Add($WANPrimaryTextBox)
$Init_Config_Form.Controls.Add($PWANNetmaskTextBox)
$Init_Config_Form.Controls.Add($WANPrimaryGWTextBox)
$Init_Config_Form.Controls.Add($WANPrimaryCommentTextBox)
$Init_Config_Form.Controls.Add($PrimaryWANPortTextBox)
$Init_Config_Form.Controls.Add($WANSecondaryTextBox)
$Init_Config_Form.Controls.Add($SWANNetmaskTextBox)
$Init_Config_Form.Controls.Add($WANSecondaryGWTextBox)
$Init_Config_Form.Controls.Add($WANSecondaryCommentTextBox)
$Init_Config_Form.Controls.Add($SecondaryWANPortTextBox)
$Init_Config_Form.Controls.Add($DNSPrimaryLabel)
$Init_Config_Form.Controls.Add($DNSPrimaryTextBox)
$Init_Config_Form.Controls.Add($DNSSecondaryLabel)
$Init_Config_Form.Controls.Add($DNSSecondaryTextBox)
$Init_Config_Form.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Init_Config_Form.ForeColor = [System.Drawing.Color]::Blue
$Init_Config_Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
$Init_Config_Form.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Init_Config_Form.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]630,[System.Int32]1400))
$Init_Config_Form.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]630,[System.Int32]925))
$Init_Config_Form.Text = [System.String]'Initial Configuration'
$Init_Config_Form.add_Load($Form1_Load)
$Init_Config_Form.ResumeLayout($false)
$Init_Config_Form.PerformLayout()
Add-Member -InputObject $Init_Config_Form -Name SiteCodeTextBox -Value $SiteCodeTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SiteCode -Value $SiteCode -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DomainName -Value $DomainName -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DomainNameTextBox -Value $DomainNameTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name AdminName -Value $AdminName -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name NewAdminName -Value $NewAdminName -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name OldPassword -Value $OldPassword -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name CurrentAdminTextBox -Value $CurrentAdminTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name NewAdminTextBox -Value $NewAdminTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name CurrentPasswordTextBox -Value $CurrentPasswordTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name Done -Value $Done -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name Cancel -Value $Cancel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name CheckDownloadsLabel -Value $CheckDownloadsLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name AdministrationTitle -Value $AdministrationTitle -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimeLanTitle -Value $PrimeLanTitle -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANPortLabel -Value $PrimaryLANPortLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANLabel -Value $PrimaryLANLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANNetmaskLabel -Value $PrimaryLANNetmaskLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANTitle -Value $WANTitle -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANTextBox -Value $PrimaryLANTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANNetmaskTextBox -Value $PrimaryLANNetmaskTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryLANPortTextBox -Value $PrimaryLANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryLabel -Value $WANPrimaryLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryGWLabel -Value $WANPrimaryGWLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PWANNetmaskLabel -Value $PWANNetmaskLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryCommentLabel -Value $WANPrimaryCommentLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryWANPortLabel -Value $PrimaryWANPortLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SWANPromptLabel -Value $SWANPromptLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name 2ndISPYes -Value $2ndISPYes -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name 2ndISPNo -Value $2ndISPNo -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SWANTitle -Value $SWANTitle -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryLabel -Value $WANSecondaryLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SWANNetmaskLabel -Value $SWANNetmaskLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryGWLabel -Value $WANSecondaryGWLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryCommentLabel -Value $WANSecondaryCommentLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name Control1 -Value $Control1 -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SecondaryWANPortLabel -Value $SecondaryWANPortLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryTextBox -Value $WANPrimaryTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PWANNetmaskTextBox -Value $PWANNetmaskTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryGWTextBox -Value $WANPrimaryGWTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANPrimaryCommentTextBox -Value $WANPrimaryCommentTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name PrimaryWANPortTextBox -Value $PrimaryWANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryTextBox -Value $WANSecondaryTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SWANNetmaskTextBox -Value $SWANNetmaskTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryGWTextBox -Value $WANSecondaryGWTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name WANSecondaryCommentTextBox -Value $WANSecondaryCommentTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name SecondaryWANPortTextBox -Value $SecondaryWANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name CheckeDownloadsLabel -Value $CheckeDownloadsLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name Done1 -Value $Done1 -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name Cancel1 -Value $Cancel1 -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DNSPrimaryLabel -Value $DNSPrimaryLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DNSPrimaryTextBox -Value $DNSPrimaryTextBox -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DNSSecondaryLabel -Value $DNSSecondaryLabel -MemberType NoteProperty
Add-Member -InputObject $Init_Config_Form -Name DNSSecondaryTextBox -Value $DNSSecondaryTextBox -MemberType NoteProperty
}
. InitializeComponent
