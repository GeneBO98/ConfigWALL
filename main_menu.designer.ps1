$Main_Menu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$VPN_Button = $null
[System.Windows.Forms.Button]$FW_Config_Button = $null
[System.Windows.Forms.Button]$ApplyVPNConf_Button = $null
[System.Windows.Forms.HelpProvider]$MainMenu_Help = $null
[System.Windows.Forms.Label]$Help_Label = $null
[System.Windows.Forms.Button]$Switch_Button = $null
function InitializeComponent
{
$VPN_Button = (New-Object -TypeName System.Windows.Forms.Button)
$FW_Config_Button = (New-Object -TypeName System.Windows.Forms.Button)
$ApplyVPNConf_Button = (New-Object -TypeName System.Windows.Forms.Button)
$MainMenu_Help = (New-Object -TypeName System.Windows.Forms.HelpProvider)
$Help_Label = (New-Object -TypeName System.Windows.Forms.Label)
$Switch_Button = (New-Object -TypeName System.Windows.Forms.Button)
$Main_Menu.SuspendLayout()
#
#VPN_Button
#
$VPN_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$VPN_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$VPN_Button.Name = [System.String]'VPN_Button'
$VPN_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]275,[System.Int32]60))
$VPN_Button.TabIndex = [System.Int32]0
$VPN_Button.Text = [System.String]'S2S VPN Setup'
$VPN_Button.UseVisualStyleBackColor = $false
$VPN_Button.add_MouseClick($S2S_MouseClick)
#
#FW_Config_Button
#
$FW_Config_Button.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$FW_Config_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$FW_Config_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$FW_Config_Button.ForeColor = [System.Drawing.SystemColors]::InfoText
$FW_Config_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]297,[System.Int32]12))
$FW_Config_Button.Name = [System.String]'FW_Config_Button'
$FW_Config_Button.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$FW_Config_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]275,[System.Int32]60))
$FW_Config_Button.TabIndex = [System.Int32]0
$FW_Config_Button.Text = [System.String]'Firewall Configuration Menu'
$FW_Config_Button.UseVisualStyleBackColor = $false
$FW_Config_Button.add_MouseClick($FW_Config_MouseClick)
#
#ApplyVPNConf_Button
#
$ApplyVPNConf_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$ApplyVPNConf_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ApplyVPNConf_Button.ForeColor = [System.Drawing.SystemColors]::InfoText
$ApplyVPNConf_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]78))
$ApplyVPNConf_Button.Name = [System.String]'ApplyVPNConf_Button'
$ApplyVPNConf_Button.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ApplyVPNConf_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]275,[System.Int32]60))
$ApplyVPNConf_Button.TabIndex = [System.Int32]0
$ApplyVPNConf_Button.Text = [System.String]'Apply VPN Configuration'
$ApplyVPNConf_Button.UseVisualStyleBackColor = $false
$ApplyVPNConf_Button.add_MouseClick($ApplyVPN_MouseClick)
#
#MainMenu_Help
#
$MainMenu_Help.HelpNamespace = [System.String]'C:\GTS\Sonicwall\SW-GUI-Dev\ConfigWALL\Help\help.html'
#
#Help_Label
#
$Help_Label.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Help_Label.BackColor = [System.Drawing.SystemColors]::Info
$Help_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Help_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semibold',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Help_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]507,[System.Int32]148))
$Help_Label.Name = [System.String]'Help_Label'
$Help_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5,[System.Int32]5,[System.Int32]5,[System.Int32]6))
$Help_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]65,[System.Int32]30))
$Help_Label.TabIndex = [System.Int32]1
$Help_Label.Text = [System.String]'F1 Help'
$Help_Label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#Switch_Button
#
$Switch_Button.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Switch_Button.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$Switch_Button.ForeColor = [System.Drawing.SystemColors]::InfoText
$Switch_Button.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]297,[System.Int32]78))
$Switch_Button.Name = [System.String]'Switch_Button'
$Switch_Button.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Switch_Button.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]275,[System.Int32]60))
$Switch_Button.TabIndex = [System.Int32]0
$Switch_Button.Text = [System.String]'Switch Config (WIP)'
$Switch_Button.UseVisualStyleBackColor = $false
$Switch_Button.add_Click($Switch_Button_Click)
$Switch_Button.add_MouseClick($Switch_MouseClick)
#
#Main_Menu
#
$Main_Menu.BackColor = [System.Drawing.SystemColors]::Info
$Main_Menu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]584,[System.Int32]187))
$Main_Menu.Controls.Add($Help_Label)
$Main_Menu.Controls.Add($VPN_Button)
$Main_Menu.Controls.Add($FW_Config_Button)
$Main_Menu.Controls.Add($ApplyVPNConf_Button)
$Main_Menu.Controls.Add($Switch_Button)
$Main_Menu.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Main_Menu.ForeColor = [System.Drawing.SystemColors]::InfoText
$Main_Menu.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Main_Menu.HelpButton = $true
$MainMenu_Help.SetShowHelp($Main_Menu,$true)
$Main_Menu.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Main_Menu.Text = [System.String]'Main Menu'
$Main_Menu.ResumeLayout($false)
Add-Member -InputObject $Main_Menu -Name VPN_Button -Value $VPN_Button -MemberType NoteProperty
Add-Member -InputObject $Main_Menu -Name FW_Config_Button -Value $FW_Config_Button -MemberType NoteProperty
Add-Member -InputObject $Main_Menu -Name ApplyVPNConf_Button -Value $ApplyVPNConf_Button -MemberType NoteProperty
Add-Member -InputObject $Main_Menu -Name MainMenu_Help -Value $MainMenu_Help -MemberType NoteProperty
Add-Member -InputObject $Main_Menu -Name Help_Label -Value $Help_Label -MemberType NoteProperty
Add-Member -InputObject $Main_Menu -Name Switch_Button -Value $Switch_Button -MemberType NoteProperty
}
. InitializeComponent
