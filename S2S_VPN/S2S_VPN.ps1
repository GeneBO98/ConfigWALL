$Done_MouseClick = { 
    try {
    Function CheckIP {
        Param(
        #These parameters are verifying that there is an input 
        #as well as checking if the input is a proper IP address
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String[]]$Site1PubIP,$Site2PubIP
        )
        }
    Function CheckMask {
        Param(
        #These parameters are verifying that there is an input 
        #as well as checking if the input is a proper IP address
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("\/[2-3][0-9]")]
        [String[]]$LAN1Mask,$LAN2Mask
        )
        }
    Function CheckSITE{
        Param(
            [Parameter(Mandatory=$true)]
            [ValidateNotNullOrEmpty()]
            [ValidatePattern("^[A-Z]{4}$|^[A-Z]{5}$", Options = 'None')]
            [String]$Site1Code,$Site2Code
        )
        }
        $Global:Site1PubIP = $PubIP_TextBox.text
        $Site1LAN = (($LocalLAN_TextBox.text) + (" ") + ($LAN1Mask_TextBox.text))
        try {
            CheckIP $Site1PubIP
        } catch {
            $ErrorStatus_Label.Text = "Firewall 1 IPv4 address in an improper format."
            return
        }
        $LAN1Mask = $LAN1Mask_TextBox.text
        try {
            CheckMask $LAN1Mask
        } catch {
            $ErrorStatus_Label.Text = "Firewall 1 netmask is an improper format."
            return
        }
        $Site1Code = $SiteCode_TextBox.text
        try {
            CheckSITE $Site1Code
        } catch {
            $ErrorStatus_Label.Text = "Verify the site code is using capital letters."
            return
        }
        $Site2Code = $SiteCode2_TextBox.text
        try {
            CheckSITE $Site2Code
        } catch {
            $ErrorStatus_Label.Text = "Verify the second site code is using capital letters."
            return
        }
        $Global:Site2PubIP = $PubIP2_TextBox.text
        $Site2LAN = (($LocalLAN2_TextBox.text) + (" ") + ($LAN2Mask_TextBox.text))
        try {
            CheckIP $Site2PubIP
        } catch {
            $ErrorStatus_Label.Text = "Firewall 2 IPv4 address in an improper format."
            return
        }

        $LAN2Mask = $LAN2Mask_TextBox.text
        try {
            CheckMask $LAN2Mask
        } catch {
            $ErrorStatus_Label.Text = "Firewall 2 netmask is an improper format."
            return
        }

    #This random characters function will take the list of available characters offered below, 
    #and create a password out of it, but then Scramble-String will rearrange them so that they 
    #are no longer in order
    function Get-RandomCharacters($length, $characters) {
        $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length }
        $private:ofs=""
        return [String]$characters[$random]
    }
     
    function Scramble-String([string]$inputString){     
        $characterArray = $inputString.ToCharArray()   
        $scrambledStringArray = $characterArray | Get-Random -Count $characterArray.Length     
        $outputString = -join $scrambledStringArray
        return $outputString 
    }
     
    $password = Get-RandomCharacters -length 10 -characters 'abcdefghiklmnoprstuvwxyz'
    $password += Get-RandomCharacters -length 2 -characters 'ABCDEFGHKLMNOPRSTUVWXYZ'
    $password += Get-RandomCharacters -length 2 -characters '1234567890'
    $password += Get-RandomCharacters -length 2 -characters '!=?@#*+'

    $Secret = (('"') + (Scramble-String $password) + ('"'))

#This will be the full configuration for 1 of the Sonicwalls
#The command has 2 redundant commands for the remote name because it differes from
#Sonic OS 6 and Sonic OS 7
    $Global:S2SConfig1 = 
    (
"config 
address-object ipv4 $Site2Code network $Site2LAN zone VPN
commit
vpn
policy site-to-site $Site2Code
enable
gateway primary $Site2PubIP
auth-method shared-secret
shared-secret $Secret
exit
network local name 'X0 Subnet'
network remote name $Site2Code
network remote destination-network name $Site2Code
proposal ike authentication sha-256
proposal ike dh-group 14
proposal ike encryption AES-256
proposal ike exchange ikev2
proposal ike lifetime 28800
proposal ipsec Protocol ESP
proposal ipsec encryption AES-256
proposal ipsec authentication SHA-256
proposal ipsec lifetime 28800
keep-alive
bound-to zone WAN
commit
exit
"
    )
#This will be the configuration for the other Sonicwall
    $Global:S2SConfig2 =
    (
"config 
address-object ipv4 $Site1Code network $Site1LAN zone VPN
commit
vpn
policy site-to-site $Site1Code
enable
gateway primary $Site1PubIP
auth-method shared-secret
shared-secret $Secret
exit
network local name 'X0 Subnet'
network remote name $Site1Code
network remote destination-network name $Site1Code
proposal ike authentication sha-256
proposal ike dh-group 14
proposal ike encryption AES-256
proposal ike exchange ikev2
proposal ike lifetime 28800
proposal ipsec Protocol ESP
proposal ipsec encryption AES-256
proposal ipsec authentication SHA-256
proposal ipsec lifetime 28800
keep-alive
bound-to zone WAN
commit
exit
"
    )
    $Global:Output1 = "$home\Downloads\$Site1Code-S2S.txt"
    write-output ($S2SConfig1) >> $Output1
    $Global:Output2 = "$home\Downloads\$Site2Code-S2S.txt"
    write-output ($S2SConfig2) >> $Output2
        $wshell = New-Object -ComObject Wscript.Shell
        $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
            $S2S_Form.close()
 } catch {
    Continue
}
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 's2s_vpn.designer.ps1')
$S2S_Form.ShowDialog()