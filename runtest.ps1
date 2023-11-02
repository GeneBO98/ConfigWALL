$scriptPath = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) "Main_Menu.ps1"
& $scriptPath
$SSH_Installed = Get-Module -ListAvailable -Name "Posh-SSH"
If ($SSH_Installed.Name -ne "Posh-SSH")
{
	Install-Module -Name "Posh-SSH"
	Import-Module -Name "Posh-SSH"
	$wshell = New-Object -ComObject Wscript.Shell
	$wshell.Popup("Posh SSH Installed", 0, "Done", 0x1)
}
