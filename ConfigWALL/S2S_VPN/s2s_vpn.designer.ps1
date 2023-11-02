$S2S_Form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$FW1_Label = $null
[System.Windows.Forms.Label]$FW2_Label = $null
[System.Windows.Forms.Label]$PubIP_Label = $null
[System.Windows.Forms.Label]$LocalLAN_Label = $null
[System.Windows.Forms.Label]$PubIP2_Label = $null
[System.Windows.Forms.Label]$LocalLAN2_Label = $null
[System.Windows.Forms.TextBox]$PubIP_TextBox = $null
[System.Windows.Forms.TextBox]$LocalLAN_TextBox = $null
[System.Windows.Forms.TextBox]$PubIP2_TextBox = $null
[System.Windows.Forms.TextBox]$LocalLAN2_TextBox = $null
[System.Windows.Forms.Label]$SiteCode_Label = $null
[System.Windows.Forms.Label]$SiteCode2_Label = $null
[System.Windows.Forms.TextBox]$SiteCode_TextBox = $null
[System.Windows.Forms.TextBox]$SiteCode2_TextBox = $null
[System.Windows.Forms.Button]$Done_Button = $null
[System.Windows.Forms.Button]$Cancel_Button = $null
[System.Windows.Forms.TextBox]$LAN1Mask_TextBox = $null
[System.Windows.Forms.TextBox]$LAN2Mask_TextBox = $null
[System.Windows.Forms.StatusStrip]$Errors_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 's2s_vpn.resources.ps1')
$FW1_Label = (New-Object -TypeName System.Windows.Forms.Label)
$FW2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PubIP_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LocalLAN_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PubIP2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$LocalLAN2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PubIP_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LocalLAN_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PubIP2_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LocalLAN2_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SiteCode_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SiteCode2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SiteCode_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SiteCode2_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Done_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Cancel_Button = (New-Object -TypeName System.Windows.Forms.Button)
$LAN1Mask_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LAN2Mask_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Errors_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$Errors_StatusStrip.SuspendLayout()
$S2S_Form.SuspendLayout()
#
#FW1_Label
#
$FW1_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$FW1_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$FW1_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$FW1_Label.Name = [System.String]'FW1_Label'
$FW1_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$FW1_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]50))
$FW1_Label.TabIndex = [System.Int32]0
$FW1_Label.Text = [System.String]'Firewall 1'
#
#FW2_Label
#
$FW2_Label.BackColor = [System.Drawing.SystemColors]::Info
$FW2_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$FW2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]15.75,[System.Drawing.FontStyle]::Bold))
$FW2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$FW2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]193))
$FW2_Label.Name = [System.String]'FW2_Label'
$FW2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$FW2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$FW2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]50))
$FW2_Label.TabIndex = [System.Int32]0
$FW2_Label.Text = [System.String]'Firewall 2'
#
#PubIP_Label
#
$PubIP_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]54))
$PubIP_Label.Name = [System.String]'PubIP_Label'
$PubIP_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PubIP_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]35))
$PubIP_Label.TabIndex = [System.Int32]1
$PubIP_Label.Text = [System.String]'Public IP Address'
#
#LocalLAN_Label
#
$LocalLAN_Label.BackColor = [System.Drawing.SystemColors]::Info
$LocalLAN_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LocalLAN_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LocalLAN_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]89))
$LocalLAN_Label.Name = [System.String]'LocalLAN_Label'
$LocalLAN_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LocalLAN_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LocalLAN_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]35))
$LocalLAN_Label.TabIndex = [System.Int32]1
$LocalLAN_Label.Text = [System.String]'Local LAN (ie. 10.10.10.0 /24)'
#
#PubIP2_Label
#
$PubIP2_Label.BackColor = [System.Drawing.SystemColors]::Info
$PubIP2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PubIP2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$PubIP2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]243))
$PubIP2_Label.Name = [System.String]'PubIP2_Label'
$PubIP2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PubIP2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PubIP2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]35))
$PubIP2_Label.TabIndex = [System.Int32]1
$PubIP2_Label.Text = [System.String]'Public IP Address'
#
#LocalLAN2_Label
#
$LocalLAN2_Label.BackColor = [System.Drawing.SystemColors]::Info
$LocalLAN2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LocalLAN2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$LocalLAN2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]278))
$LocalLAN2_Label.Name = [System.String]'LocalLAN2_Label'
$LocalLAN2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$LocalLAN2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LocalLAN2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]35))
$LocalLAN2_Label.TabIndex = [System.Int32]1
$LocalLAN2_Label.Text = [System.String]'Local LAN (ie. 10.10.10.0 /24)'
#
#PubIP_TextBox
#
$PubIP_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]54))
$PubIP_TextBox.Name = [System.String]'PubIP_TextBox'
$PubIP_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$PubIP_TextBox.TabIndex = [System.Int32]2
#
#LocalLAN_TextBox
#
$LocalLAN_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LocalLAN_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LocalLAN_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LocalLAN_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LocalLAN_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]89))
$LocalLAN_TextBox.Name = [System.String]'LocalLAN_TextBox'
$LocalLAN_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LocalLAN_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]29))
$LocalLAN_TextBox.TabIndex = [System.Int32]2
#
#PubIP2_TextBox
#
$PubIP2_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$PubIP2_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PubIP2_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PubIP2_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PubIP2_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]243))
$PubIP2_TextBox.Name = [System.String]'PubIP2_TextBox'
$PubIP2_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PubIP2_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$PubIP2_TextBox.TabIndex = [System.Int32]2
#
#LocalLAN2_TextBox
#
$LocalLAN2_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LocalLAN2_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LocalLAN2_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LocalLAN2_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LocalLAN2_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]278))
$LocalLAN2_TextBox.Name = [System.String]'LocalLAN2_TextBox'
$LocalLAN2_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LocalLAN2_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]29))
$LocalLAN2_TextBox.TabIndex = [System.Int32]2
#
#SiteCode_Label
#
$SiteCode_Label.BackColor = [System.Drawing.SystemColors]::Info
$SiteCode_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SiteCode_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SiteCode_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]124))
$SiteCode_Label.Name = [System.String]'SiteCode_Label'
$SiteCode_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SiteCode_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SiteCode_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]35))
$SiteCode_Label.TabIndex = [System.Int32]1
$SiteCode_Label.Text = [System.String]'Site Code'
#
#SiteCode2_Label
#
$SiteCode2_Label.BackColor = [System.Drawing.SystemColors]::Info
$SiteCode2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SiteCode2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$SiteCode2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]313))
$SiteCode2_Label.Name = [System.String]'SiteCode2_Label'
$SiteCode2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SiteCode2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SiteCode2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]35))
$SiteCode2_Label.TabIndex = [System.Int32]1
$SiteCode2_Label.Text = [System.String]'Site Code'
#
#SiteCode_TextBox
#
$SiteCode_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SiteCode_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SiteCode_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SiteCode_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SiteCode_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]124))
$SiteCode_TextBox.Name = [System.String]'SiteCode_TextBox'
$SiteCode_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SiteCode_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$SiteCode_TextBox.TabIndex = [System.Int32]2
#
#SiteCode2_TextBox
#
$SiteCode2_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$SiteCode2_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SiteCode2_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SiteCode2_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SiteCode2_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]313))
$SiteCode2_TextBox.Name = [System.String]'SiteCode2_TextBox'
$SiteCode2_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SiteCode2_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$SiteCode2_TextBox.TabIndex = [System.Int32]2
#
#Done_Button
#
$Done_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done_Button.ForeColor = [System.Drawing.Color]::DarkGreen
$Done_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]426,[System.Int32]364))
$Done_Button.Name = [System.String]'Done_Button'
$Done_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done_Button.TabIndex = [System.Int32]6
$Done_Button.Text = [System.String]'Done'
$Done_Button.UseVisualStyleBackColor = $false
$Done_Button.add_MouseClick($Done_MouseClick)
#
#Cancel_Button
#
$Cancel_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel_Button.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Cancel_Button.ForeColor = [System.Drawing.Color]::Red
$Cancel_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]505,[System.Int32]364))
$Cancel_Button.Name = [System.String]'Cancel_Button'
$Cancel_Button.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Cancel_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel_Button.TabIndex = [System.Int32]6
$Cancel_Button.Text = [System.String]'Cancel'
$Cancel_Button.UseVisualStyleBackColor = $false
#
#LAN1Mask_TextBox
#
$LAN1Mask_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]529,[System.Int32]89))
$LAN1Mask_TextBox.Name = [System.String]'LAN1Mask_TextBox'
$LAN1Mask_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]29))
$LAN1Mask_TextBox.TabIndex = [System.Int32]7
#
#LAN2Mask_TextBox
#
$LAN2Mask_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$LAN2Mask_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$LAN2Mask_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$LAN2Mask_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$LAN2Mask_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]529,[System.Int32]278))
$LAN2Mask_TextBox.Name = [System.String]'LAN2Mask_TextBox'
$LAN2Mask_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LAN2Mask_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]29))
$LAN2Mask_TextBox.TabIndex = [System.Int32]7
#
#Errors_StatusStrip
#
$Errors_StatusStrip.BackColor = [System.Drawing.Color]::Transparent
$Errors_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$Errors_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]404))
$Errors_StatusStrip.Name = [System.String]'Errors_StatusStrip'
$Errors_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]584,[System.Int32]22))
$Errors_StatusStrip.TabIndex = [System.Int32]8
$Errors_StatusStrip.Text = [System.String]'Errors_StatusStrip'
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
#S2S_Form
#
$S2S_Form.AcceptButton = $Done_Button
$S2S_Form.BackColor = [System.Drawing.SystemColors]::Info
$S2S_Form.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$S2S_Form.CancelButton = $Cancel_Button
$S2S_Form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]584,[System.Int32]426))
$S2S_Form.Controls.Add($Errors_StatusStrip)
$S2S_Form.Controls.Add($LAN1Mask_TextBox)
$S2S_Form.Controls.Add($Done_Button)
$S2S_Form.Controls.Add($PubIP_TextBox)
$S2S_Form.Controls.Add($PubIP_Label)
$S2S_Form.Controls.Add($FW1_Label)
$S2S_Form.Controls.Add($FW2_Label)
$S2S_Form.Controls.Add($LocalLAN_Label)
$S2S_Form.Controls.Add($PubIP2_Label)
$S2S_Form.Controls.Add($LocalLAN2_Label)
$S2S_Form.Controls.Add($LocalLAN_TextBox)
$S2S_Form.Controls.Add($PubIP2_TextBox)
$S2S_Form.Controls.Add($LocalLAN2_TextBox)
$S2S_Form.Controls.Add($SiteCode_Label)
$S2S_Form.Controls.Add($SiteCode2_Label)
$S2S_Form.Controls.Add($SiteCode_TextBox)
$S2S_Form.Controls.Add($SiteCode2_TextBox)
$S2S_Form.Controls.Add($Cancel_Button)
$S2S_Form.Controls.Add($LAN2Mask_TextBox)
$S2S_Form.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$S2S_Form.ForeColor = [System.Drawing.SystemColors]::InfoText
$S2S_Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$S2S_Form.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$S2S_Form.Text = [System.String]'S2S VPN'
$Errors_StatusStrip.ResumeLayout($false)
$Errors_StatusStrip.PerformLayout()
$S2S_Form.ResumeLayout($false)
$S2S_Form.PerformLayout()
Add-Member -InputObject $S2S_Form -Name FW1_Label -Value $FW1_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name FW2_Label -Value $FW2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name PubIP_Label -Value $PubIP_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LocalLAN_Label -Value $LocalLAN_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name PubIP2_Label -Value $PubIP2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LocalLAN2_Label -Value $LocalLAN2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name PubIP_TextBox -Value $PubIP_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LocalLAN_TextBox -Value $LocalLAN_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name PubIP2_TextBox -Value $PubIP2_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LocalLAN2_TextBox -Value $LocalLAN2_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name SiteCode_Label -Value $SiteCode_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name SiteCode2_Label -Value $SiteCode2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name SiteCode_TextBox -Value $SiteCode_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name SiteCode2_TextBox -Value $SiteCode2_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name Done_Button -Value $Done_Button -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name Cancel_Button -Value $Cancel_Button -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LAN1Mask_TextBox -Value $LAN1Mask_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name LAN2Mask_TextBox -Value $LAN2Mask_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name Errors_StatusStrip -Value $Errors_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $S2S_Form -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
}
. InitializeComponent
