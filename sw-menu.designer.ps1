$SW_Config_Menu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$AdministrationButton = $null
[System.Windows.Forms.Button]$Quit = $null
[System.Windows.Forms.Button]$LANButton = $null
[System.Windows.Forms.Button]$WANButton = $null
[System.Windows.Forms.Button]$FullConfigButton = $null
[System.Windows.Forms.Button]$geoButton = $null
[System.Windows.Forms.Button]$CapATPButton = $null
[System.Windows.Forms.Button]$ClearVarButton = $null
[System.Windows.Forms.Button]$ClearSSHButton = $null
[System.Windows.Forms.Button]$NewSWIPButton = $null
[System.Windows.Forms.Button]$ApplyButton = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.HelpProvider]$SWMenu_Help = $null
[System.Windows.Forms.Label]$Help_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'sw-menu.resources.ps1')
$AdministrationButton = (New-Object -TypeName System.Windows.Forms.Button)
$Quit = (New-Object -TypeName System.Windows.Forms.Button)
$LANButton = (New-Object -TypeName System.Windows.Forms.Button)
$WANButton = (New-Object -TypeName System.Windows.Forms.Button)
$FullConfigButton = (New-Object -TypeName System.Windows.Forms.Button)
$geoButton = (New-Object -TypeName System.Windows.Forms.Button)
$CapATPButton = (New-Object -TypeName System.Windows.Forms.Button)
$ClearVarButton = (New-Object -TypeName System.Windows.Forms.Button)
$ClearSSHButton = (New-Object -TypeName System.Windows.Forms.Button)
$NewSWIPButton = (New-Object -TypeName System.Windows.Forms.Button)
$ApplyButton = (New-Object -TypeName System.Windows.Forms.Button)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$SWMenu_Help = (New-Object -TypeName System.Windows.Forms.HelpProvider)
$Help_Label = (New-Object -TypeName System.Windows.Forms.Label)
$SW_Config_Menu.SuspendLayout()
#
#AdministrationButton
#
$AdministrationButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$AdministrationButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$AdministrationButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]158))
$AdministrationButton.Name = [System.String]'AdministrationButton'
$AdministrationButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$AdministrationButton.TabIndex = [System.Int32]0
$AdministrationButton.Text = [System.String]'Administration'
$AdministrationButton.UseVisualStyleBackColor = $false
$AdministrationButton.add_MouseClick($Admin_Click)
#
#Quit
#
$Quit.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Quit.Cursor = [System.Windows.Forms.Cursors]::Hand
$Quit.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Quit.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]24,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Quit.ForeColor = [System.Drawing.Color]::Red
$Quit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]368,[System.Int32]482))
$Quit.Name = [System.String]'Quit'
$Quit.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Quit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]76))
$Quit.TabIndex = [System.Int32]0
$Quit.Text = [System.String]'Quit'
$Quit.UseVisualStyleBackColor = $false
$Quit.add_MouseClick($Quit_Click)
#
#LANButton
#
$LANButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$LANButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$LANButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$LANButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]239))
$LANButton.Name = [System.String]'LANButton'
$LANButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$LANButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$LANButton.TabIndex = [System.Int32]0
$LANButton.Text = [System.String]'LAN'
$LANButton.UseVisualStyleBackColor = $false
$LANButton.add_MouseClick($LAN_Click)
#
#WANButton
#
$WANButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$WANButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$WANButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$WANButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]320))
$WANButton.Name = [System.String]'WANButton'
$WANButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$WANButton.TabIndex = [System.Int32]0
$WANButton.Text = [System.String]'WAN'
$WANButton.UseVisualStyleBackColor = $false
$WANButton.add_MouseClick($WAN_Click)
#
#FullConfigButton
#
$FullConfigButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$FullConfigButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$FullConfigButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$FullConfigButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]77))
$FullConfigButton.Name = [System.String]'FullConfigButton'
$FullConfigButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$FullConfigButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]704,[System.Int32]75))
$FullConfigButton.TabIndex = [System.Int32]0
$FullConfigButton.Text = [System.String]'Initial/Full Setup'
$FullConfigButton.UseVisualStyleBackColor = $false
$FullConfigButton.add_MouseClick($Init_Setup_Click)
#
#geoButton
#
$geoButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$geoButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$geoButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$geoButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]158))
$geoButton.Name = [System.String]'geoButton'
$geoButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$geoButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$geoButton.TabIndex = [System.Int32]0
$geoButton.Text = [System.String]'Geo-IP'
$geoButton.UseVisualStyleBackColor = $false
$geoButton.add_MouseClick($Geo_Click)
#
#CapATPButton
#
$CapATPButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$CapATPButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$CapATPButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$CapATPButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]239))
$CapATPButton.Name = [System.String]'CapATPButton'
$CapATPButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CapATPButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$CapATPButton.TabIndex = [System.Int32]0
$CapATPButton.Text = [System.String]'Capture ATP'
$CapATPButton.UseVisualStyleBackColor = $false
$CapATPButton.add_MouseClick($CapATP_Click)
#
#ClearVarButton
#
$ClearVarButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$ClearVarButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$ClearVarButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$ClearVarButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]368,[System.Int32]401))
$ClearVarButton.Name = [System.String]'ClearVarButton'
$ClearVarButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ClearVarButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$ClearVarButton.TabIndex = [System.Int32]0
$ClearVarButton.Text = [System.String]'Clear Variables'
$ClearVarButton.UseVisualStyleBackColor = $false
$ClearVarButton.add_MouseClick($ClearVar_Click)
#
#ClearSSHButton
#
$ClearSSHButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$ClearSSHButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$ClearSSHButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$ClearSSHButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]401))
$ClearSSHButton.Name = [System.String]'ClearSSHButton'
$ClearSSHButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ClearSSHButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$ClearSSHButton.TabIndex = [System.Int32]0
$ClearSSHButton.Text = [System.String]'Clear SSH Session'
$ClearSSHButton.UseVisualStyleBackColor = $false
$ClearSSHButton.add_MouseClick($ClearSSH_Click)
#
#NewSWIPButton
#
$NewSWIPButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$NewSWIPButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25))
$NewSWIPButton.ForeColor = [System.Drawing.SystemColors]::MenuText
$NewSWIPButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]320))
$NewSWIPButton.Name = [System.String]'NewSWIPButton'
$NewSWIPButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$NewSWIPButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]75))
$NewSWIPButton.TabIndex = [System.Int32]0
$NewSWIPButton.Text = [System.String]'Set New SW IP'
$NewSWIPButton.UseVisualStyleBackColor = $false
$NewSWIPButton.add_MouseClick($NewSWIP_Click)
#
#ApplyButton
#
$ApplyButton.BackColor = [System.Drawing.SystemColors]::ButtonFace
$ApplyButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]24,[System.Drawing.FontStyle]::Bold))
$ApplyButton.ForeColor = [System.Drawing.Color]::DarkGreen
$ApplyButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]482))
$ApplyButton.Name = [System.String]'ApplyButton'
$ApplyButton.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ApplyButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]350,[System.Int32]76))
$ApplyButton.TabIndex = [System.Int32]0
$ApplyButton.Text = [System.String]'Apply Config'
$ApplyButton.UseVisualStyleBackColor = $false
$ApplyButton.add_MouseClick($Apply_Click)
#
#Label1
#
$Label1.BackColor = [System.Drawing.SystemColors]::Info
$Label1.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]24,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::Black
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]704,[System.Int32]65))
$Label1.TabIndex = [System.Int32]1
$Label1.Text = [System.String]'Firewall Configuration Tool Menu'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#SWMenu_Help
#
$SWMenu_Help.HelpNamespace = [System.String]'C:\GTS\Sonicwall\SW-GUI-Dev\ConfigWALL\Help\help.html'
#
#Help_Label
#
$Help_Label.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Help_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Help_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]648,[System.Int32]563))
$Help_Label.Name = [System.String]'Help_Label'
$Help_Label.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$Help_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]68,[System.Int32]30))
$Help_Label.TabIndex = [System.Int32]2
$Help_Label.Text = [System.String]'F1 Help'
#
#SW_Config_Menu
#
$SW_Config_Menu.BackColor = [System.Drawing.SystemColors]::Info
$SW_Config_Menu.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$SW_Config_Menu.CancelButton = $Quit
$SW_Config_Menu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]728,[System.Int32]602))
$SW_Config_Menu.Controls.Add($Help_Label)
$SW_Config_Menu.Controls.Add($Label1)
$SW_Config_Menu.Controls.Add($AdministrationButton)
$SW_Config_Menu.Controls.Add($Quit)
$SW_Config_Menu.Controls.Add($LANButton)
$SW_Config_Menu.Controls.Add($WANButton)
$SW_Config_Menu.Controls.Add($FullConfigButton)
$SW_Config_Menu.Controls.Add($geoButton)
$SW_Config_Menu.Controls.Add($CapATPButton)
$SW_Config_Menu.Controls.Add($ClearVarButton)
$SW_Config_Menu.Controls.Add($ClearSSHButton)
$SW_Config_Menu.Controls.Add($NewSWIPButton)
$SW_Config_Menu.Controls.Add($ApplyButton)
$SW_Config_Menu.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SW_Config_Menu.ForeColor = [System.Drawing.SystemColors]::MenuText
$SW_Config_Menu.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$SW_Config_Menu.HelpButton = $true
$SW_Config_Menu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$SWMenu_Help.SetShowHelp($SW_Config_Menu,$true)
$SW_Config_Menu.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$SW_Config_Menu.Text = [System.String]'Sonicwall Configuration Menu'
$SW_Config_Menu.add_Load($SW_Config_Menu_Load)
$SW_Config_Menu.ResumeLayout($false)
Add-Member -InputObject $SW_Config_Menu -Name AdministrationButton -Value $AdministrationButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name Quit -Value $Quit -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name LANButton -Value $LANButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name WANButton -Value $WANButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name FullConfigButton -Value $FullConfigButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name geoButton -Value $geoButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name CapATPButton -Value $CapATPButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name ClearVarButton -Value $ClearVarButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name ClearSSHButton -Value $ClearSSHButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name NewSWIPButton -Value $NewSWIPButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name ApplyButton -Value $ApplyButton -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name SWMenu_Help -Value $SWMenu_Help -MemberType NoteProperty
Add-Member -InputObject $SW_Config_Menu -Name Help_Label -Value $Help_Label -MemberType NoteProperty
}
. InitializeComponent
