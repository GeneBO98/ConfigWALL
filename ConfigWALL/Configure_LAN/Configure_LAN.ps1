$DNSPrimaryTextBox_TextChanged = {
}
$Mouse_Click = {#This loop is going to make sure that the input for the LAN IP address fits the formatting requirement
    try {
    Function CheckLANIP{
    #These functions are there so that the input is verified as matching what is expected
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("[0-1][0-9][0-9]\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}")]
        [String]$PLAN
    )
    }
    Function CheckIP{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String]$LANSM,$DNSP,$DNSS
    )
    }
    Function CheckPort{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("x[0-9]")]
        [String]$PLANPort
    )
    }
    #Variables that are used in the actual config output
    [String]$PLAN = $PrimaryLanTextBox.text
    try {
        CheckLANIP $PLAN
    } catch {
        $ErrorStatus_Label.Text = "Verify the proper formatting is used for the LAN IP."
        return
    }
    [String]$LANSM = $LANSubnetMaskTextBox.text
    try {
        CheckIP $LANSM
    } catch {
        $ErrorStatus_Label.Text = "The subnet mask is not valid."
        return
    }
    [String]$PLANPort = $PrimaryLANPortTextBox.text
    try {
        CheckPort $PLANPort
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid port for the LAN interface."
        return
    }
    #DNS settings
    $DNSP = $DNSPrimaryTextBox.text
    try {
        CheckIP $DNSP
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid IP address for the Primary DNS."
        return
    }
    $DNSS = $DNSSecondaryTextBox.text
    try {
        CheckIP $DNSS
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid IP address for the Secondary DNS."
        return
    }
    $DNSTertiary = "8.8.8.8"
#LANDHCP is creating the IP range for DHCP on the Primary interface, and LANDHCPEnd is the end of range
if ($LANSubnetMask -eq "255.255.255.0")
    {
    $LANDHCP = $PLAN.subString(0,$PLAN.length-3)+"050"
    $LANDHCPEnd = $PLAN.subString(0,$PLAN.length-3)+"254"
    } elseif ($LANSM -eq "255.255.254.0")
        {
        $LANDHCP = $PLAN.subString(0,$PLAN.length-3)+"075"

        #Converts the Primary LAN IP into an integer so it can be incremented by 1 for the DHCP range
        $IP2Int = $PLAN.replace('.','')
        $PrelimDHCP = ([int]$IP2Int.substring(0,$IP2Int.length-3))+1
        $DHCPInt = "{0:d9}" -f $PrelimDHCP
        for ($i = 3; $i -lt $DHCPInt.Length; $i+=4)
            {
            $DHCPInt = $DHCPInt.Insert($i,'.')
            $LANDHCPEnd = ([string]$DHCPInt)+".254"
            }
        } elseif ($LANSM -eq "255.255.252.0")
            {
            $LANDHCP = $PLAN.subString(0,$PLAN.length-3)+"100"

            #Converts the Primary LAN IP into an integer so it can be incremented by 3 for the DHCP range
            $IP2Int = $PLAN.replace('.','')
            $PrelimDHCP = ([int]$IP2Int.substring(0,$IP2Int.length-3))+3
            $DHCPInt = "{0:d9}" -f $PrelimDHCP
            for ($i = 3; $i -lt $DHCPInt.Length; $i+=4)
                {
                $DHCPInt = $DHCPInt.Insert($i,'.')
                $LANDHCPEnd = ([string]$DHCPInt)+".254"
                }
            }
#LAN configuration that gets output to the text file to be used when applying the configuration
$SWConfig2 = 
("conf t
dns server static primary $DNSP
dns server static secondary $DNSS
dns server static tertiary $DNSTertiary
interface $PLANPort
ip-assignment LAN static
ip $PLAN netmask $LANSM
exit
exit
commit
dhcp
enable
scope dynamic $LANDHCP $LANDHCPEnd
netmask $LANSM
default-gateway $PLAN
dns server inherit
domain-name $DomainName
exit
exit
commit"
)
    $Config = "$home\Downloads\$SiteCode-LAN.txt"
    write-output ($SWConfig2) >> $Config
            $wshell = New-Object -ComObject Wscript.Shell
            $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
            $ConfigLAN.close()
    } catch {
        Continue
    }
}
$LANSubnetMaskTextBox_TextChanged = {
}
$Label1_Click = {
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'configure_lan.designer.ps1')
$ConfigLAN.ShowDialog()
