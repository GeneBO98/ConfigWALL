$S2S_Creds = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Firewall1_Title = $null
[System.Windows.Forms.Control]$Control1 = $null
[System.Windows.Forms.Label]$Username1_Label = $null
[System.Windows.Forms.Label]$Password1_Label = $null
[System.Windows.Forms.Label]$Firewall2_Title = $null
[System.Windows.Forms.Label]$Username2_Label = $null
[System.Windows.Forms.Label]$Password2_Label = $null
[System.Windows.Forms.Button]$Cancel_Button = $null
[System.Windows.Forms.Button]$Done_Button = $null
[System.Windows.Forms.TextBox]$Username1_TextBox = $null
[System.Windows.Forms.TextBox]$Password1_TextBox = $null
[System.Windows.Forms.TextBox]$Username2_TextBox = $null
[System.Windows.Forms.TextBox]$Password2_TextBox = $null
[System.Windows.Forms.RichTextBox]$ErrorOutput_RichTextBox = $null
[System.Windows.Forms.StatusStrip]$FW_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
[System.Windows.Forms.StatusStrip]$FW2_StatusStrip = $null
[System.Windows.Forms.ToolStripProgressBar]$FW2_ProgressBar = $null
[System.Windows.Forms.StatusStrip]$FW1_StatusStrip = $null
[System.Windows.Forms.ToolStripProgressBar]$FW1_ProgressBar = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 's2s_fw_creds.resources.ps1')
$Firewall1_Title = (New-Object -TypeName System.Windows.Forms.Label)
$Control1 = (New-Object -TypeName System.Windows.Forms.Control)
$Username1_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Password1_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Firewall2_Title = (New-Object -TypeName System.Windows.Forms.Label)
$Username2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Password2_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Cancel_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Done_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Username1_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Password1_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Username2_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Password2_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$ErrorOutput_RichTextBox = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$FW_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$FW2_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$FW2_ProgressBar = (New-Object -TypeName System.Windows.Forms.ToolStripProgressBar)
$FW1_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$FW1_ProgressBar = (New-Object -TypeName System.Windows.Forms.ToolStripProgressBar)
$FW_StatusStrip.SuspendLayout()
$FW2_StatusStrip.SuspendLayout()
$FW1_StatusStrip.SuspendLayout()
$S2S_Creds.SuspendLayout()
#
#Firewall1_Title
#
$Firewall1_Title.BackColor = [System.Drawing.SystemColors]::Menu
$Firewall1_Title.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Firewall1_Title.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$Firewall1_Title.Name = [System.String]'Firewall1_Title'
$Firewall1_Title.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Firewall1_Title.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]164,[System.Int32]35))
$Firewall1_Title.TabIndex = [System.Int32]0
$Firewall1_Title.Text = [System.String]'Firewall 1'
#
#Control1
#
$Control1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$Control1.Name = [System.String]'Control1'
$Control1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]0))
$Control1.TabIndex = [System.Int32]1
#
#Username1_Label
#
$Username1_Label.BackColor = [System.Drawing.SystemColors]::Info
$Username1_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Username1_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$Username1_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]44))
$Username1_Label.Name = [System.String]'Username1_Label'
$Username1_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Username1_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Username1_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]35))
$Username1_Label.TabIndex = [System.Int32]0
$Username1_Label.Text = [System.String]'Username'
#
#Password1_Label
#
$Password1_Label.BackColor = [System.Drawing.SystemColors]::Info
$Password1_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Password1_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$Password1_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]79))
$Password1_Label.Name = [System.String]'Password1_Label'
$Password1_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Password1_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Password1_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]35))
$Password1_Label.TabIndex = [System.Int32]0
$Password1_Label.Text = [System.String]'Password'
#
#Firewall2_Title
#
$Firewall2_Title.BackColor = [System.Drawing.SystemColors]::Menu
$Firewall2_Title.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Firewall2_Title.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Firewall2_Title.ForeColor = [System.Drawing.SystemColors]::InfoText
$Firewall2_Title.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]143))
$Firewall2_Title.Name = [System.String]'Firewall2_Title'
$Firewall2_Title.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Firewall2_Title.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Firewall2_Title.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]164,[System.Int32]35))
$Firewall2_Title.TabIndex = [System.Int32]0
$Firewall2_Title.Text = [System.String]'Firewall 2'
#
#Username2_Label
#
$Username2_Label.BackColor = [System.Drawing.SystemColors]::Info
$Username2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Username2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$Username2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]178))
$Username2_Label.Name = [System.String]'Username2_Label'
$Username2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Username2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Username2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]35))
$Username2_Label.TabIndex = [System.Int32]0
$Username2_Label.Text = [System.String]'Username'
#
#Password2_Label
#
$Password2_Label.BackColor = [System.Drawing.SystemColors]::Info
$Password2_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Password2_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$Password2_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]213))
$Password2_Label.Name = [System.String]'Password2_Label'
$Password2_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Password2_Label.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Password2_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]35))
$Password2_Label.TabIndex = [System.Int32]0
$Password2_Label.Text = [System.String]'Password'
#
#Cancel_Button
#
$Cancel_Button.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Cancel_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel_Button.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel_Button.ForeColor = [System.Drawing.Color]::Red
$Cancel_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]299,[System.Int32]252))
$Cancel_Button.Name = [System.String]'Cancel_Button'
$Cancel_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel_Button.TabIndex = [System.Int32]2
$Cancel_Button.Text = [System.String]'Cancel'
$Cancel_Button.UseVisualStyleBackColor = $false
#
#Done_Button
#
$Done_Button.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done_Button.ForeColor = [System.Drawing.Color]::DarkGreen
$Done_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]220,[System.Int32]252))
$Done_Button.Name = [System.String]'Done_Button'
$Done_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done_Button.TabIndex = [System.Int32]3
$Done_Button.Text = [System.String]'Done'
$Done_Button.UseVisualStyleBackColor = $false
$Done_Button.add_MouseClick($Done_MouseClick)
#
#Username1_TextBox
#
$Username1_TextBox.Anchor = [System.Windows.Forms.AnchorStyles]::Right
$Username1_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]247,[System.Int32]48))
$Username1_TextBox.Name = [System.String]'Username1_TextBox'
$Username1_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]125,[System.Int32]29))
$Username1_TextBox.TabIndex = [System.Int32]4
#
#Password1_TextBox
#
$Password1_TextBox.Anchor = [System.Windows.Forms.AnchorStyles]::Right
$Password1_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$Password1_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Password1_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$Password1_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$Password1_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]247,[System.Int32]83))
$Password1_TextBox.Name = [System.String]'Password1_TextBox'
$Password1_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Password1_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]125,[System.Int32]29))
$Password1_TextBox.TabIndex = [System.Int32]4
#
#Username2_TextBox
#
$Username2_TextBox.Anchor = [System.Windows.Forms.AnchorStyles]::Right
$Username2_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$Username2_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Username2_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$Username2_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$Username2_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]247,[System.Int32]182))
$Username2_TextBox.Name = [System.String]'Username2_TextBox'
$Username2_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Username2_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]125,[System.Int32]29))
$Username2_TextBox.TabIndex = [System.Int32]4
#
#Password2_TextBox
#
$Password2_TextBox.Anchor = [System.Windows.Forms.AnchorStyles]::Right
$Password2_TextBox.BackColor = [System.Drawing.SystemColors]::Window
$Password2_TextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Password2_TextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$Password2_TextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$Password2_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]247,[System.Int32]217))
$Password2_TextBox.Name = [System.String]'Password2_TextBox'
$Password2_TextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Password2_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]125,[System.Int32]29))
$Password2_TextBox.TabIndex = [System.Int32]4
#
#ErrorOutput_RichTextBox
#
$ErrorOutput_RichTextBox.ForeColor = [System.Drawing.Color]::Red
$ErrorOutput_RichTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]287))
$ErrorOutput_RichTextBox.Name = [System.String]'ErrorOutput_RichTextBox'
$ErrorOutput_RichTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]360,[System.Int32]184))
$ErrorOutput_RichTextBox.TabIndex = [System.Int32]5
$ErrorOutput_RichTextBox.Text = [System.String]''
#
#FW_StatusStrip
#
$FW_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$FW_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$FW_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]531))
$FW_StatusStrip.Name = [System.String]'FW_StatusStrip'
$FW_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]384,[System.Int32]22))
$FW_StatusStrip.TabIndex = [System.Int32]6
$FW_StatusStrip.Text = [System.String]'Firewall'
#
#ErrorStatus_Label
#
$ErrorStatus_Label.BackColor = [System.Drawing.Color]::Transparent
$ErrorStatus_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ErrorStatus_Label.ForeColor = [System.Drawing.Color]::Red
$ErrorStatus_Label.Name = [System.String]'ErrorStatus_Label'
$ErrorStatus_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]126,[System.Int32]17))
$ErrorStatus_Label.Text = [System.String]'Firewall with error:'
#
#FW2_StatusStrip
#
$FW2_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$FW2_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($FW2_ProgressBar))
$FW2_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]509))
$FW2_StatusStrip.Name = [System.String]'FW2_StatusStrip'
$FW2_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]384,[System.Int32]22))
$FW2_StatusStrip.TabIndex = [System.Int32]7
$FW2_StatusStrip.Text = [System.String]'StatusStrip1'
#
#FW2_ProgressBar
#
$FW2_ProgressBar.ForeColor = [System.Drawing.Color]::Lime
$FW2_ProgressBar.Name = [System.String]'FW2_ProgressBar'
$FW2_ProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]360,[System.Int32]16))
#
#FW1_StatusStrip
#
$FW1_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$FW1_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($FW1_ProgressBar))
$FW1_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]487))
$FW1_StatusStrip.Name = [System.String]'FW1_StatusStrip'
$FW1_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]384,[System.Int32]22))
$FW1_StatusStrip.TabIndex = [System.Int32]8
$FW1_StatusStrip.Text = [System.String]'StatusStrip1'
#
#FW1_ProgressBar
#
$FW1_ProgressBar.ForeColor = [System.Drawing.Color]::Lime
$FW1_ProgressBar.Name = [System.String]'FW1_ProgressBar'
$FW1_ProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]360,[System.Int32]16))
#
#S2S_Creds
#
$S2S_Creds.AcceptButton = $Done_Button
$S2S_Creds.BackColor = [System.Drawing.SystemColors]::Info
$S2S_Creds.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$S2S_Creds.CancelButton = $Cancel_Button
$S2S_Creds.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]384,[System.Int32]553))
$S2S_Creds.Controls.Add($FW1_StatusStrip)
$S2S_Creds.Controls.Add($FW2_StatusStrip)
$S2S_Creds.Controls.Add($FW_StatusStrip)
$S2S_Creds.Controls.Add($ErrorOutput_RichTextBox)
$S2S_Creds.Controls.Add($Username1_TextBox)
$S2S_Creds.Controls.Add($Done_Button)
$S2S_Creds.Controls.Add($Cancel_Button)
$S2S_Creds.Controls.Add($Firewall1_Title)
$S2S_Creds.Controls.Add($Control1)
$S2S_Creds.Controls.Add($Username1_Label)
$S2S_Creds.Controls.Add($Password1_Label)
$S2S_Creds.Controls.Add($Firewall2_Title)
$S2S_Creds.Controls.Add($Username2_Label)
$S2S_Creds.Controls.Add($Password2_Label)
$S2S_Creds.Controls.Add($Password1_TextBox)
$S2S_Creds.Controls.Add($Username2_TextBox)
$S2S_Creds.Controls.Add($Password2_TextBox)
$S2S_Creds.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$S2S_Creds.ForeColor = [System.Drawing.SystemColors]::InfoText
$S2S_Creds.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$S2S_Creds.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$S2S_Creds.Text = [System.String]'Firewall Credentials'
$FW_StatusStrip.ResumeLayout($false)
$FW_StatusStrip.PerformLayout()
$FW2_StatusStrip.ResumeLayout($false)
$FW2_StatusStrip.PerformLayout()
$FW1_StatusStrip.ResumeLayout($false)
$FW1_StatusStrip.PerformLayout()
$S2S_Creds.ResumeLayout($false)
$S2S_Creds.PerformLayout()
Add-Member -InputObject $S2S_Creds -Name Firewall1_Title -Value $Firewall1_Title -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Control1 -Value $Control1 -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Username1_Label -Value $Username1_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Password1_Label -Value $Password1_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Firewall2_Title -Value $Firewall2_Title -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Username2_Label -Value $Username2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Password2_Label -Value $Password2_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Cancel_Button -Value $Cancel_Button -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Done_Button -Value $Done_Button -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Username1_TextBox -Value $Username1_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Password1_TextBox -Value $Password1_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Username2_TextBox -Value $Username2_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name Password2_TextBox -Value $Password2_TextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name ErrorOutput_RichTextBox -Value $ErrorOutput_RichTextBox -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name FW_StatusStrip -Value $FW_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name FW2_StatusStrip -Value $FW2_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name FW2_ProgressBar -Value $FW2_ProgressBar -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name FW1_StatusStrip -Value $FW1_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $S2S_Creds -Name FW1_ProgressBar -Value $FW1_ProgressBar -MemberType NoteProperty
}
. InitializeComponent
