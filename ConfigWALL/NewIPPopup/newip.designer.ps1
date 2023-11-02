$NewFWIP_Form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$NewFWIP_TextBox = $null
[System.Windows.Forms.Label]$NewFWIP_Label = $null
[System.Windows.Forms.Button]$Cancel_Button = $null
[System.Windows.Forms.Control]$Control1 = $null
[System.Windows.Forms.Button]$Done_Button = $null
[System.Windows.Forms.StatusStrip]$Errors_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorOutStatus_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'newip.resources.ps1')
$NewFWIP_TextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$NewFWIP_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Cancel_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Control1 = (New-Object -TypeName System.Windows.Forms.Control)
$Done_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Errors_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorOutStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$Errors_StatusStrip.SuspendLayout()
$NewFWIP_Form.SuspendLayout()
#
#NewFWIP_TextBox
#
$NewFWIP_TextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]276,[System.Int32]12))
$NewFWIP_TextBox.Name = [System.String]'NewFWIP_TextBox'
$NewFWIP_TextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]21))
$NewFWIP_TextBox.TabIndex = [System.Int32]0
#
#NewFWIP_Label
#
$NewFWIP_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$NewFWIP_Label.ForeColor = [System.Drawing.SystemColors]::InfoText
$NewFWIP_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$NewFWIP_Label.Name = [System.String]'NewFWIP_Label'
$NewFWIP_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]246,[System.Int32]23))
$NewFWIP_Label.TabIndex = [System.Int32]1
$NewFWIP_Label.Text = [System.String]'Enter the new firewall IP address:'
#
#Cancel_Button
#
$Cancel_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel_Button.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Cancel_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]324,[System.Int32]41))
$Cancel_Button.Name = [System.String]'Cancel_Button'
$Cancel_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel_Button.TabIndex = [System.Int32]2
$Cancel_Button.Text = [System.String]'Cancel'
$Cancel_Button.UseVisualStyleBackColor = $false
#
#Control1
#
$Control1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$Control1.Name = [System.String]'Control1'
$Control1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]0))
$Control1.TabIndex = [System.Int32]3
#
#Done_Button
#
$Done_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$Done_Button.ForeColor = [System.Drawing.Color]::DarkGreen
$Done_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]245,[System.Int32]41))
$Done_Button.Name = [System.String]'Done_Button'
$Done_Button.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Done_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done_Button.TabIndex = [System.Int32]2
$Done_Button.Text = [System.String]'Done'
$Done_Button.UseVisualStyleBackColor = $false
$Done_Button.add_MouseClick($Done_MouseClick)
#
#Errors_StatusStrip
#
$Errors_StatusStrip.BackColor = [System.Drawing.Color]::Transparent
$Errors_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorOutStatus_Label))
$Errors_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]79))
$Errors_StatusStrip.Name = [System.String]'Errors_StatusStrip'
$Errors_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]409,[System.Int32]22))
$Errors_StatusStrip.TabIndex = [System.Int32]4
$Errors_StatusStrip.Text = [System.String]'Error output'
#
#ErrorOutStatus_Label
#
$ErrorOutStatus_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ErrorOutStatus_Label.ForeColor = [System.Drawing.Color]::Red
$ErrorOutStatus_Label.Name = [System.String]'ErrorOutStatus_Label'
$ErrorOutStatus_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]17))
$ErrorOutStatus_Label.Text = [System.String]'Error Output'
#
#NewFWIP_Form
#
$NewFWIP_Form.AcceptButton = $Done_Button
$NewFWIP_Form.BackColor = [System.Drawing.SystemColors]::Info
$NewFWIP_Form.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$NewFWIP_Form.CancelButton = $Cancel_Button
$NewFWIP_Form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]409,[System.Int32]101))
$NewFWIP_Form.Controls.Add($Errors_StatusStrip)
$NewFWIP_Form.Controls.Add($Cancel_Button)
$NewFWIP_Form.Controls.Add($NewFWIP_Label)
$NewFWIP_Form.Controls.Add($NewFWIP_TextBox)
$NewFWIP_Form.Controls.Add($Control1)
$NewFWIP_Form.Controls.Add($Done_Button)
$NewFWIP_Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$NewFWIP_Form.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$NewFWIP_Form.Name = [System.String]'NewFWIP_Form'
$NewFWIP_Form.Text = [System.String]'Set New Firewall IP'
$Errors_StatusStrip.ResumeLayout($false)
$Errors_StatusStrip.PerformLayout()
$NewFWIP_Form.ResumeLayout($false)
$NewFWIP_Form.PerformLayout()
Add-Member -InputObject $NewFWIP_Form -Name NewFWIP_TextBox -Value $NewFWIP_TextBox -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name NewFWIP_Label -Value $NewFWIP_Label -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name Cancel_Button -Value $Cancel_Button -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name Control1 -Value $Control1 -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name Done_Button -Value $Done_Button -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name Errors_StatusStrip -Value $Errors_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $NewFWIP_Form -Name ErrorOutStatus_Label -Value $ErrorOutStatus_Label -MemberType NoteProperty
}
. InitializeComponent
