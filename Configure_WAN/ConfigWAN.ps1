Function CheckPWANIP{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String]$WANP,$WANPGW,$PWANNM
    )
    }
    Function CheckSWANIP{
        Param(
            [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
            [String]$WANS,$WANSGW,$SWANNM
        )
        }
    Function CheckPWANPort{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("x[0-9]")]
        [String]$PWANPort
    )
    }
    Function CheckSWANPort{
        Param(
            [ValidatePattern("x[0-9]")]
            [String]$SWANPort
        )
        }
$No_Mouse_Click = {
    If($True){
        $WANSecondaryComment.Visible = $False
        $SWANInfoTitle.Visible = $False
        $WANSecondary.Visible = $False
        $SWANNetmask.Visible = $False
        $WANSecondaryGW.Visible = $False
        $SecondaryWANPort.Visible = $False
        $WANSecondaryTextBox.Visible = $False
        $SWANNetmaskTextBox.Visible = $False
        $WANSecondaryGWTextBox.Visible = $False
        $WANSecondaryCommentTextBox.Visible = $False
        $SecondaryWANPortTextBox.Visible = $False
    }
}
$Yes_Mouse_Click = {
    If($True){
        $WANSecondaryComment.Visible = $True
        $SWANInfoTitle.Visible = $True
        $WANSecondary.Visible = $True
        $SWANNetmask.Visible = $True
        $WANSecondaryGW.Visible = $True
        $SecondaryWANPort.Visible = $True
        $WANSecondaryTextBox.Visible = $True
        $SWANNetmaskTextBox.Visible = $True
        $WANSecondaryGWTextBox.Visible = $True
        $WANSecondaryCommentTextBox.Visible = $True
        $SecondaryWANPortTextBox.Visible = $True  
    }
}
$Mouse_Click = {
    [String]$WANP = $WANPrimaryTextBox.text
        try {
            CheckPWANIP $WANP
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the Primary public IPv4 address."
            return
        }
        [String]$PWANNM = $PWANNetmaskTextBox.text
        try {
            CheckPWANIP $PWANNM
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the Primary WAN subnet mask"
            return
        }
        [String]$WANPGW = $WANPrimaryGWTextBox.text
        try {
            CheckPWANIP $WANPGW
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the primary gateway IPv4 address."
            return
        }
        [String]$WANPC = ('"' + ($WANPrimaryCommentTextBox.text) + '"')
        [String]$PWANPort = $PrimaryWANPortTextBox.text
        try {
            CheckPWANPort $PWANPort
        } catch {
            $ErrorStatus_Label.Text = "Enter a valid port for the primary WAN interface."
            return
        }
        [String]$WANS = $WANSecondaryTextBox.text
    if($WANSecondary.Visible -eq $True){
        try {
            CheckSWANIP $WANS
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary public IPv4 address."
            return
        }
    }
        [String]$SWANNM = $SWANNetmaskTextBox.text
        if($SWANNetmask.Visible -eq $True){
            try {
                CheckSWANIP $SWANNM
            } catch {
                $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary WAN subnet mask."
                return
            }
        }
        [String]$WANSGW = $WANSecondaryGWTextBox.text
        if($WANSecondaryGWTextBox.Visible -eq $True){
            try {
                CheckSWANIP $WANSGW
            } catch {
                $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary gateway IPv4 address."
                return
            }
        }
        [String]$WANSC = ('"' + ($WANSecondaryCommentTextBox.text) + '"')
        [String]$SWANPort = $SecondaryWANPortTextBox.text
        if($SecondaryWANPortTextBox.Visible -eq $True){
            try {
                CheckSWANPort $SWANPort
            } catch {
                $ErrorStatus_Label.Text = "Enter a valid port for the secondary WAN interface."
                return
            }
        }
    If($2ndISPYes.Checked){
        $SWConfig3 = 
        ("conf t
interface $PWANPort
ip-assignment WAN static
ip $WANP netmask $PWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $WANPGW
exit
comment $WANPC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit
interface $SWANPort
ip-assignment WAN static
ip $WANS netmask $SWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $WANSGW
exit
comment $WANSC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit")
                    $Config = "$home\Downloads\$SiteCode-WAN.txt"
                    write-output ($SWConfig3) >> $Config
        } if($2ndISPNo.Checked) {
                $SWSingleConfig3 = 
                ("conf t
interface $PWANPort
ip-assignment WAN static
ip $WANP netmask $PWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $WANPGW
exit
comment $WANPC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit")
                    $Config = "$home\Downloads\$SiteCode-WAN.txt"
                    write-output ($SWSingleConfig3) >> $Config
        }
                $wshell = New-Object -ComObject Wscript.Shell
                $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
                    $ConfigWANForm.close()
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'configwan.designer.ps1')
$ConfigWANForm.ShowDialog()