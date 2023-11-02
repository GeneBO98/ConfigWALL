$Switch_Button_Click = {
}
$Switch_MouseClick = {
    . "$PSScriptRoot\Switch\Switch_Config.ps1"
}
$ApplyVPN_MouseClick = {
    . $PSScriptRoot\S2S_VPN_Creds\S2S_FW_Creds.ps1
}
$FW_Config_MouseClick = {
    . $PSScriptRoot\SW-Menu.ps1
}
$S2S_MouseClick = {
    . $PSScriptRoot\S2S_VPN\S2S_VPN.ps1
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'main_menu.designer.ps1')
$Main_Menu.ShowDialog()