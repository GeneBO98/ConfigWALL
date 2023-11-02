cd "C:\Program Files\ConfigWALL"
Invoke-Expression -Command .\Main_Menu.ps1
$SSH_Installed = Get-InstalledModule -Name "Posh-SSH"
If ($SSH_Installed.Name -ne "Posh-SSH")
{
	Install-Module -Name "Posh-SSH"
	Import-Module -Name "Posh-SSH"
	$wshell = New-Object -ComObject Wscript.Shell
	$wshell.Popup("Posh SSH Installed", 0, "Done", 0x1)
}
