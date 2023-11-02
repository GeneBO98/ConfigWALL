$ConfigLAN = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$PrimaryLAN = $null
[System.Windows.Forms.Label]$LANSubnetMask = $null
[System.Windows.Forms.Label]$PrimaryLANPort = $null
[System.Windows.Forms.TextBox]$PrimaryLANTextBox = $null
[System.Windows.Forms.TextBox]$LANSubnetMaskTextBox = $null
[System.Windows.Forms.TextBox]$PrimaryLANPortTextBox = $null
[System.Windows.Forms.Button]$Done = $null
[System.Windows.Forms.Button]$Cancel = $null
[System.Windows.Forms.Label]$DNSPrimaryLabel = $null
[System.Windows.Forms.TextBox]$DNSPrimaryTextBox = $null
[System.Windows.Forms.Label]$DNSSecondaryLabel = $null
[System.Windows.Forms.TextBox]$DNSSecondaryTextBox = $null
[System.Windows.Forms.StatusStrip]$ErrorsOutput_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'configure_lan.resources.ps1')
$PrimaryLAN = (New-Object -TypeName System.Windows.Forms.Label)
$LANSubnetMask = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANPort = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryLANTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LANSubnetMaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryLANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Done = (New-Object -TypeName System.Windows.Forms.Button)
$Cancel = (New-Object -TypeName System.Windows.Forms.Button)
$DNSPrimaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DNSPrimaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DNSSecondaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DNSSecondaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$ErrorsOutput_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$ErrorsOutput_StatusStrip.SuspendLayout()
$ConfigLAN.SuspendLayout()
#
#PrimaryLAN
#
$PrimaryLAN.Anchor = [System.Windows.Forms.AnchorStyles]::Left
$PrimaryLAN.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryLAN.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]17))
$PrimaryLAN.Name = [System.String]'PrimaryLAN'
$PrimaryLAN.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]58))
$PrimaryLAN.TabIndex = [System.Int32]0
$PrimaryLAN.Text = [System.String]'Enter the primary LAN gateway IP in the following format (ie. 010.110.050.001)'
$PrimaryLAN.add_Click($Label1_Click)
#
#LANSubnetMask
#
$LANSubnetMask.Anchor = [System.Windows.Forms.AnchorStyles]::Left
$LANSubnetMask.ForeColor = [System.Drawing.SystemColors]::InfoText
$LANSubnetMask.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]81))
$LANSubnetMask.Name = [System.String]'LANSubnetMask'
$LANSubnetMask.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]45))
$LANSubnetMask.TabIndex = [System.Int32]1
$LANSubnetMask.Text = [System.String]'Enter the subnet mask for primary LAN interface (ie. 255.255.255.0)'
#
#PrimaryLANPort
#
$PrimaryLANPort.Anchor = [System.Windows.Forms.AnchorStyles]::Left
$PrimaryLANPort.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]140))
$PrimaryLANPort.Name = [System.String]'PrimaryLANPort'
$PrimaryLANPort.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]50))
$PrimaryLANPort.TabIndex = [System.Int32]2
$PrimaryLANPort.Text = [System.String]'What interface will be used for primary LAN on the Sonicwall? (ie. X0)'
#
#PrimaryLANTextBox
#
$PrimaryLANTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]10))
$PrimaryLANTextBox.Name = [System.String]'PrimaryLANTextBox'
$PrimaryLANTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryLANTextBox.TabIndex = [System.Int32]3
#
#LANSubnetMaskTextBox
#
$LANSubnetMaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]74))
$LANSubnetMaskTextBox.Name = [System.String]'LANSubnetMaskTextBox'
$LANSubnetMaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$LANSubnetMaskTextBox.TabIndex = [System.Int32]4
$LANSubnetMaskTextBox.add_TextChanged($LANSubnetMaskTextBox_TextChanged)
#
#PrimaryLANPortTextBox
#
$PrimaryLANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]133))
$PrimaryLANPortTextBox.Name = [System.String]'PrimaryLANPortTextBox'
$PrimaryLANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryLANPortTextBox.TabIndex = [System.Int32]5
#
#Done
#
$Done.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Done.ForeColor = [System.Drawing.Color]::DarkGreen
$Done.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]426,[System.Int32]284))
$Done.Name = [System.String]'Done'
$Done.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done.TabIndex = [System.Int32]6
$Done.Text = [System.String]'Done'
$Done.UseVisualStyleBackColor = $false
$Done.add_MouseClick($Mouse_Click)
#
#Cancel
#
$Cancel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Cancel.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Cancel.ForeColor = [System.Drawing.Color]::Red
$Cancel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]505,[System.Int32]284))
$Cancel.Name = [System.String]'Cancel'
$Cancel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel.TabIndex = [System.Int32]7
$Cancel.Text = [System.String]'Cancel'
$Cancel.UseVisualStyleBackColor = $false
#
#DNSPrimaryLabel
#
$DNSPrimaryLabel.Anchor = [System.Windows.Forms.AnchorStyles]::Left
$DNSPrimaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$DNSPrimaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSPrimaryLabel.ForeColor = [System.Drawing.SystemColors]::InfoText
$DNSPrimaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]190))
$DNSPrimaryLabel.Name = [System.String]'DNSPrimaryLabel'
$DNSPrimaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSPrimaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]50))
$DNSPrimaryLabel.TabIndex = [System.Int32]2
$DNSPrimaryLabel.Text = [System.String]'Enter the IP address of the local domain controller to be used for Primary DNS'
#
#DNSPrimaryTextBox
#
$DNSPrimaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$DNSPrimaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSPrimaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DNSPrimaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DNSPrimaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]183))
$DNSPrimaryTextBox.Name = [System.String]'DNSPrimaryTextBox'
$DNSPrimaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSPrimaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$DNSPrimaryTextBox.TabIndex = [System.Int32]5
#
#DNSSecondaryLabel
#
$DNSSecondaryLabel.Anchor = [System.Windows.Forms.AnchorStyles]::Left
$DNSSecondaryLabel.BackColor = [System.Drawing.SystemColors]::Info
$DNSSecondaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSSecondaryLabel.ForeColor = [System.Drawing.SystemColors]::InfoText
$DNSSecondaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]240))
$DNSSecondaryLabel.Name = [System.String]'DNSSecondaryLabel'
$DNSSecondaryLabel.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSSecondaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]356,[System.Int32]50))
$DNSSecondaryLabel.TabIndex = [System.Int32]2
$DNSSecondaryLabel.Text = [System.String]'Enter the IP address of the PDC for secondary DNS'
#
#DNSSecondaryTextBox
#
$DNSSecondaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$DNSSecondaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$DNSSecondaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DNSSecondaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DNSSecondaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]233))
$DNSSecondaryTextBox.Name = [System.String]'DNSSecondaryTextBox'
$DNSSecondaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DNSSecondaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$DNSSecondaryTextBox.TabIndex = [System.Int32]5
$DNSSecondaryTextBox.add_TextChanged($DNSPrimaryTextBox_TextChanged)
#
#ErrorsOutput_StatusStrip
#
$ErrorsOutput_StatusStrip.BackColor = [System.Drawing.Color]::Transparent
$ErrorsOutput_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$ErrorsOutput_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]322))
$ErrorsOutput_StatusStrip.Name = [System.String]'ErrorsOutput_StatusStrip'
$ErrorsOutput_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]590,[System.Int32]22))
$ErrorsOutput_StatusStrip.TabIndex = [System.Int32]9
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
#ConfigLAN
#
$ConfigLAN.AcceptButton = $Done
$ConfigLAN.BackColor = [System.Drawing.SystemColors]::Info
$ConfigLAN.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$ConfigLAN.CancelButton = $Cancel
$ConfigLAN.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]590,[System.Int32]344))
$ConfigLAN.Controls.Add($ErrorsOutput_StatusStrip)
$ConfigLAN.Controls.Add($Cancel)
$ConfigLAN.Controls.Add($Done)
$ConfigLAN.Controls.Add($PrimaryLANPortTextBox)
$ConfigLAN.Controls.Add($LANSubnetMaskTextBox)
$ConfigLAN.Controls.Add($PrimaryLANTextBox)
$ConfigLAN.Controls.Add($PrimaryLANPort)
$ConfigLAN.Controls.Add($LANSubnetMask)
$ConfigLAN.Controls.Add($PrimaryLAN)
$ConfigLAN.Controls.Add($DNSPrimaryLabel)
$ConfigLAN.Controls.Add($DNSPrimaryTextBox)
$ConfigLAN.Controls.Add($DNSSecondaryLabel)
$ConfigLAN.Controls.Add($DNSSecondaryTextBox)
$ConfigLAN.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ConfigLAN.ForeColor = [System.Drawing.SystemColors]::InfoText
$ConfigLAN.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$ConfigLAN.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ConfigLAN.Text = [System.String]'Configure LAN'
$ErrorsOutput_StatusStrip.ResumeLayout($false)
$ErrorsOutput_StatusStrip.PerformLayout()
$ConfigLAN.ResumeLayout($false)
$ConfigLAN.PerformLayout()
Add-Member -InputObject $ConfigLAN -Name PrimaryLAN -Value $PrimaryLAN -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name LANSubnetMask -Value $LANSubnetMask -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name PrimaryLANPort -Value $PrimaryLANPort -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name PrimaryLANTextBox -Value $PrimaryLANTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name LANSubnetMaskTextBox -Value $LANSubnetMaskTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name PrimaryLANPortTextBox -Value $PrimaryLANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name Done -Value $Done -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name Cancel -Value $Cancel -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name DNSPrimaryLabel -Value $DNSPrimaryLabel -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name DNSPrimaryTextBox -Value $DNSPrimaryTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name DNSSecondaryLabel -Value $DNSSecondaryLabel -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name DNSSecondaryTextBox -Value $DNSSecondaryTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name ErrorsOutput_StatusStrip -Value $ErrorsOutput_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $ConfigLAN -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
}
. InitializeComponent
