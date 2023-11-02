$CheckDownload = New-Object -TypeName System.Windows.Forms.Form
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
[System.Windows.Forms.StatusStrip]$ErrorsOutput_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'administration-form.resources.ps1')
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
$ErrorsOutput_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$ErrorsOutput_StatusStrip.SuspendLayout()
$CheckDownload.SuspendLayout()
#
#SiteCodeTextBox
#
$SiteCodeTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]12))
$SiteCodeTextBox.Name = [System.String]'SiteCodeTextBox'
$SiteCodeTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$SiteCodeTextBox.TabIndex = [System.Int32]0
#
#SiteCode
#
$SiteCode.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SiteCode.ForeColor = [System.Drawing.SystemColors]::InfoText
$SiteCode.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]16))
$SiteCode.Name = [System.String]'SiteCode'
$SiteCode.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]21))
$SiteCode.TabIndex = [System.Int32]1
$SiteCode.Text = [System.String]'What is the site code? Use capital letters.'
#
#DomainName
#
$DomainName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$DomainName.ForeColor = [System.Drawing.SystemColors]::InfoText
$DomainName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]49))
$DomainName.Name = [System.String]'DomainName'
$DomainName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]21))
$DomainName.TabIndex = [System.Int32]2
$DomainName.Text = [System.String]'Enter the site domain name.'
$DomainName.add_Click($DomainName_Click)
#
#DomainNameTextBox
#
$DomainNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]43))
$DomainNameTextBox.Name = [System.String]'DomainNameTextBox'
$DomainNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$DomainNameTextBox.TabIndex = [System.Int32]3
#
#AdminName
#
$AdminName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdminName.ForeColor = [System.Drawing.SystemColors]::InfoText
$AdminName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]78))
$AdminName.Name = [System.String]'AdminName'
$AdminName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]21))
$AdminName.TabIndex = [System.Int32]4
$AdminName.Text = [System.String]'Enter the current admin username.'
#
#NewAdminName
#
$NewAdminName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$NewAdminName.ForeColor = [System.Drawing.SystemColors]::InfoText
$NewAdminName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]108))
$NewAdminName.Name = [System.String]'NewAdminName'
$NewAdminName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]21))
$NewAdminName.TabIndex = [System.Int32]5
$NewAdminName.Text = [System.String]'Enter the new admin username. (eg. newadmin)'
#
#OldPassword
#
$OldPassword.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$OldPassword.ForeColor = [System.Drawing.SystemColors]::InfoText
$OldPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]141))
$OldPassword.Name = [System.String]'OldPassword'
$OldPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]21))
$OldPassword.TabIndex = [System.Int32]6
$OldPassword.Text = [System.String]'Enter the current password. (eg. password)'
$OldPassword.add_Click($OldPassword_Click)
#
#CurrentAdminTextBox
#
$CurrentAdminTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]73))
$CurrentAdminTextBox.Name = [System.String]'CurrentAdminTextBox'
$CurrentAdminTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$CurrentAdminTextBox.TabIndex = [System.Int32]7
$CurrentAdminTextBox.add_TextChanged($TextBox3_TextChanged)
#
#NewAdminTextBox
#
$NewAdminTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]104))
$NewAdminTextBox.Name = [System.String]'NewAdminTextBox'
$NewAdminTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$NewAdminTextBox.TabIndex = [System.Int32]8
#
#CurrentPasswordTextBox
#
$CurrentPasswordTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]429,[System.Int32]137))
$CurrentPasswordTextBox.Name = [System.String]'CurrentPasswordTextBox'
$CurrentPasswordTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]148,[System.Int32]25))
$CurrentPasswordTextBox.TabIndex = [System.Int32]9
#
#Done
#
$Done.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::None
$Done.ForeColor = [System.Drawing.Color]::DarkGreen
$Done.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]425,[System.Int32]179))
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
$Cancel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]504,[System.Int32]179))
$Cancel.Name = [System.String]'Cancel'
$Cancel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Cancel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel.TabIndex = [System.Int32]10
$Cancel.Text = [System.String]'Cancel'
$Cancel.UseVisualStyleBackColor = $false
#
#ErrorsOutput_StatusStrip
#
$ErrorsOutput_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$ErrorsOutput_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$ErrorsOutput_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]215))
$ErrorsOutput_StatusStrip.Name = [System.String]'ErrorsOutput_StatusStrip'
$ErrorsOutput_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]589,[System.Int32]22))
$ErrorsOutput_StatusStrip.TabIndex = [System.Int32]11
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
#CheckDownload
#
$CheckDownload.AcceptButton = $Done
$CheckDownload.AccessibleRole = [System.Windows.Forms.AccessibleRole]::Application
$CheckDownload.BackColor = [System.Drawing.SystemColors]::Info
$CheckDownload.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$CheckDownload.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$CheckDownload.CancelButton = $Cancel
$CheckDownload.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]589,[System.Int32]237))
$CheckDownload.Controls.Add($ErrorsOutput_StatusStrip)
$CheckDownload.Controls.Add($Done)
$CheckDownload.Controls.Add($CurrentPasswordTextBox)
$CheckDownload.Controls.Add($NewAdminTextBox)
$CheckDownload.Controls.Add($CurrentAdminTextBox)
$CheckDownload.Controls.Add($OldPassword)
$CheckDownload.Controls.Add($NewAdminName)
$CheckDownload.Controls.Add($AdminName)
$CheckDownload.Controls.Add($DomainNameTextBox)
$CheckDownload.Controls.Add($DomainName)
$CheckDownload.Controls.Add($SiteCode)
$CheckDownload.Controls.Add($SiteCodeTextBox)
$CheckDownload.Controls.Add($Cancel)
$CheckDownload.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CheckDownload.ForeColor = [System.Drawing.SystemColors]::InfoText
$CheckDownload.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$CheckDownload.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CheckDownload.Text = [System.String]'Administration Settings'
$CheckDownload.add_Load($Form1_Load)
$ErrorsOutput_StatusStrip.ResumeLayout($false)
$ErrorsOutput_StatusStrip.PerformLayout()
$CheckDownload.ResumeLayout($false)
$CheckDownload.PerformLayout()
Add-Member -InputObject $CheckDownload -Name SiteCodeTextBox -Value $SiteCodeTextBox -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name SiteCode -Value $SiteCode -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name DomainName -Value $DomainName -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name DomainNameTextBox -Value $DomainNameTextBox -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name AdminName -Value $AdminName -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name NewAdminName -Value $NewAdminName -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name OldPassword -Value $OldPassword -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name CurrentAdminTextBox -Value $CurrentAdminTextBox -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name NewAdminTextBox -Value $NewAdminTextBox -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name CurrentPasswordTextBox -Value $CurrentPasswordTextBox -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name Done -Value $Done -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name Cancel -Value $Cancel -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name ErrorsOutput_StatusStrip -Value $ErrorsOutput_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $CheckDownload -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
}
. InitializeComponent
