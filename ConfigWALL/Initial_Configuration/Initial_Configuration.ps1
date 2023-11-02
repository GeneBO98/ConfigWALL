Function CheckSWANIP {
    Param(
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String]$SWANIP,$SWANGW,$SWANNM
    )
}
    Function CheckSWANPort {
    Param(
        [ValidatePattern("x[0-9]")]
        [String]$SWANPort
    )
}
    Function CheckLANIP {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("[0-1][0-9][0-9]\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}")]
        [String]$LANIP
        )
    }
    Function CheckIP {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String]$LANSM,$DNSP,$DNSS,$PWANIP,$PWANGW,$PWANNM
    )
    }
    Function CheckPort {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("x[0-9]")]
        [String]$LANPort,$PWANPort
    )
    }
    Function CheckSITE {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^[A-Z]{1,12}$", Options = 'None')]
        [String]$SiteCode
        )
        }
    Function CheckDomain {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^[A-Z]+\.[A-Z]+$")]
        [String]$Domain
        )
        }
$No_Radio_MouseClick = {
    If($True){
        $SecondaryWANIP_Label.Visible = $false
        $SecondaryWANIP_TextBox.Visible = $false
        $SecondaryWANNetmask_Label.Visible = $false
        $SecondaryWANNetmask_TextBox.Visible = $false
        $SecondaryWANGW_Label.Visible = $false
        $SecondaryWANGW_TextBox.Visible = $false
        $SecondaryWANComment_Label.Visible = $false
        $SecondaryWANComment_TextBox.Visible = $false
        $SecondaryWANPort_Label.Visible = $false
        $SecondaryWANPort_TextBox.Visible = $false
        $SecondaryWANTitle_Label.Visible = $false
    }
}
$Yes_Radio_MouseClick = {
    If($True){
        $SecondaryWANIP_Label.Visible = $True
        $SecondaryWANIP_TextBox.Visible = $True
        $SecondaryWANNetmask_Label.Visible = $True
        $SecondaryWANNetmask_TextBox.Visible = $True
        $SecondaryWANGW_Label.Visible = $True
        $SecondaryWANGW_TextBox.Visible = $True
        $SecondaryWANComment_Label.Visible = $True
        $SecondaryWANComment_TextBox.Visible = $True
        $SecondaryWANPort_Label.Visible = $True
        $SecondaryWANPort_TextBox.Visible = $True
        $SecondaryWANTitle_Label.Visible = $True
    }
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

$Done_MouseClick = {
    try {
    $SiteCode = $SiteCode_TextBox.Text
    try {
        CheckSITE $SiteCode
    } catch {
        $ErrorStatus_Label.Text = "Verify the site code is 1-12 characters and using capital letters."
        return
    }
    [string]$Global:CurrentPassword = $CurrentPassword_TextBox.text
    [string]$NewAdmin = $NewAdminName_TextBox.text
    [string]$Global:AdminName = $CurrentAdmin_TextBox.text
    [string]$Domain = $DomainName_TextBox.text
    try {
        CheckDomain $Domain
    } catch {
        $ErrorStatus_Label.Text = "There may be incorrect formatting with the domain."
        return
    }
    [string]$RouterName = $SiteCode_TextBox.text + "-RTR"
    [string]$NewPassword = (('"') + (Scramble-String $password) + ('"'))
    [String]$LANIP = $LANIP_TextBox.text
    try {
        CheckLANIP $LANIP
    } catch {
        $ErrorStatus_Label.Text = "Verify the proper formatting is used for the LAN IP."
        return
    }
    [String]$LANSM = $LANSubnetMask_TextBox.text
    try {
        CheckIP $LANSM
    } catch {
        $ErrorStatus_Label.Text = "The subnet mask is not valid."
        return
    }
    [String]$LANPort = $LANPort_TextBox.text
    try {
        CheckPort $LANPort
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid port for the LAN interface."
        return
    }
    #DNS settings
    [String]$DNSP = $PrimaryLANDNS_TextBox.text
    try {
        CheckIP $DNSP
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid IP address for the Primary DNS."
        return
    }
    [String]$DNSS = $SecondaryLANDNS_TextBox.text
    try {
        CheckIP $DNSS
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid IP address for the Secondary DNS."
        return
    }
    [String]$DNSTertiary = "9.9.9.9"
    #WAN Settings
    [String]$PWANIP = $PrimaryWANIP_TextBox.text
    try {
        CheckIP $PWANIP
    } catch {
        $ErrorStatus_Label.Text = "Verify the proper formatting is used for the Primary public IPv4 address."
        return
    }
    [String]$PWANNM = $PrimaryWANNetmask_TextBox.text
    try {
        CheckIP $PWANNM
    } catch {
        $ErrorStatus_Label.Text = "Verify the proper formatting is used for the Primary WAN subnet mask"
        return
    }
    [String]$PWANGW = $PrimaryWANGW_TextBox.text
    try {
        CheckIP $PWANGW
    } catch {
        $ErrorStatus_Label.Text = "Verify the proper formatting is used for the primary gateway IPv4 address."
        return
    }
    [String]$PWANC = ('"') + ($PrimaryWANComment_TextBox.text) + ('"')
    [String]$PWANPort = $PrimaryWANPort_TextBox.text
    try {
        CheckPort $PWANPort
    } catch {
        $ErrorStatus_Label.Text = "Enter a valid port for the primary WAN interface."
        return
    }
    [String]$SWANIP = $SecondaryWANIP_TextBox.text
    if($SecondaryWANIP_Label.Visible -eq $True){
        try {
            CheckSWANIP $SWANIP
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary public IPv4 address."
            return
        }
    }
    [String]$SWANNM = $SecondaryWANNetmask_TextBox.text
    if($SecondaryWANNetmask_Label.Visible -eq $True){
        try {
            CheckSWANIP $SWANNM
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary WAN subnet mask."
            return
        }
    }
    [String]$SWANGW = $SecondaryWANGW_TextBox.text
    if($SecondaryWANGW_Label.Visible -eq $True){
        try {
            CheckSWANIP $SWANGW
        } catch {
            $ErrorStatus_Label.Text = "Verify the proper formatting is used for the secondary gateway IPv4 address."
            return
        }
    }
    [String]$SWANC = ('"') + ($SecondaryWANComment_TextBox.text) + ('"')
    [String]$SWANPort = $SecondaryWANPort_TextBox.text
    if($SecondaryWANPort_Label.Visible -eq $True){
        try {
            CheckSWANPort $SWANPort
        } catch {
            $ErrorStatus_Label.Text = "Enter a valid port for the secondary WAN interface."
            return
        }
    }
    #Start of the first command block that will run to create the config, only
    #if the radio button for a second WAN interface is checked.
            #LANDHCP is creating the IP range for DHCP on the Primary interface, and LANDHCPEnd is the end of range
            if ($LANSM -eq "255.255.255.0") {
                $LANDHCP = $LANIP.subString(0,$LANIP.length-3)+"050"
                $LANDHCPEnd = $LANIP.subString(0,$LANIP.length-3)+"254"
                } elseif ($LANSM -eq "255.255.254.0") {
                    $LANDHCP = $LANIP.subString(0,$LANIP.length-3)+"075"
                    #Converts the Primary LAN IP into an integer so it can be incremented by 1 for the DHCP range
                    $IP2Int = $LANIP.replace('.','')
                    $PrelimDHCP = ([int]$IP2Int.substring(0,$IP2Int.length-3))+1
                    $DHCPInt = "{0:d9}" -f $PrelimDHCP
                    for ($i = 3; $i -lt $DHCPInt.Length; $i+=4) {
                        $DHCPInt = $DHCPInt.Insert($i,'.')
                        $LANDHCPEnd = ([string]$DHCPInt)+".254"
                        }
                    } elseif ($LANSM -eq "255.255.252.0") {
                        $LANDHCP = $LANIP.subString(0,$LANIP.length-3)+"100"
                        #Converts the Primary LAN IP into an integer so it can be incremented by 3 for the DHCP range
                        $IP2Int = $LANIP.replace('.','')
                        $PrelimDHCP = ([int]$IP2Int.substring(0,$IP2Int.length-3))+3
                        $DHCPInt = "{0:d9}" -f $PrelimDHCP
                        for ($i = 3; $i -lt $DHCPInt.Length; $i+=4) {
                            $DHCPInt = $DHCPInt.Insert($i,'.')
                            $LANDHCPEnd = ([string]$DHCPInt)+".254"
                            }
                        }
            #Default Timeclock Object
            #This takes the LAN string and removes the last 2 digits to replace with 42
            $TCLength = $LANIP.Length - 2
            $TCAdd = $LANIP.Substring(0,$TCLength)
            $TimeClock = $TCAdd + '42'
            #Auvik address object
            $Auvik = $TCAdd + '05'
            #List of countries to be blocked in Geo-IP later
            #These countries declared as variables include ' in their names so I had to set them separately
            $NKorea = ("Korea, Democratic People's Republic of")
            $Cote = ("Cote d'Ivoire")
            $Lao = ("Lao People's Democratic Republic")
            $geoip = (
'geo-ip
block country "Anonymous Proxy/Private IP"
block country "Satellite Provider"
block country Andorra
block country "United Arab Emirates"
block country Afghanistan
block country "Antigua and Barbuda"
block country Anguilla
block country Albania
block country Armenia
block country "Netherlands Antilles"
block country Angola
block country "Asia/Pacific Region"
block country Antarctica
block country Argentina
block country "American Samoa"
block country Austria
block country Aruba
block country "Aland Islands"
block country Azerbaijan
block country "Bosnia and Herzegovina"
block country Barbados
block country Bangladesh
block country Belgium
block country "Burkina Faso"
block country Bulgaria
block country Bahrain
block country Burundi
block country Benin
block country Bermuda
block country "Brunei Darussalam"
block country Bolivia
block country Brazil
block country Bahamas
block country Bhutan
block country "Bouvet Island"
block country Botswana
block country Belarus
block country Belize
block country "Cocos (Keeling) Islands"
block country "Congo, The Democratic Republic of the"
block country "Central African Republic"
block country Congo
block country "Cook Islands"
block country Chile
block country Cameroon
block country China
block country Colombia
block country "Costa Rica"
block country Cuba
block country "Cape Verde"
block country "Christmas Island"
block country Cyprus
block country "Czech Republic"
block country Djibouti
block country Dominica
block country "Dominican Republic"
block country Algeria
block country Ecuador
block country Estonia
block country Egypt
block country "Western Sahara"
block country Eritrea
block country Spain
block country Ethiopia
block country Fiji
block country "Falkland Islands (Malvinas)"
block country "Micronesia, Federated States of"
block country "Faroe Islands"
block country Gabon
block country Grenada
block country Georgia
block country "French Guiana"
block country Guernsey
block country Ghana
block country Gibraltar
block country Gambia
block country Guinea
block country Guadeloupe
block country "Equatorial Guinea"
block country "South Georgia and the South Sandwich Islands"
block country Guatemala
block country Guam
block country Guinea-Bissau
block country Guyana
block country "Hong Kong"
block country "Heard Island and McDonald Islands"
block country Honduras
block country Croatia
block country Haiti
block country Hungary
block country Indonesia
block country Ireland
block country "Isle of Man"
block country India
block country "British Indian Ocean Territory"
block country Iraq
block country "Iran, Islamic Republic of"
block country Italy
block country Jersey
block country Jamaica
block country Jordan
block country Kenya
block country Kyrgyzstan
block country Cambodia
block country Kiribati
block country Comoros
block country "Saint Kitts and Nevis"
block country "Korea, Republic of"
block country Kuwait
block country "Cayman Islands"
block country Kazakhstan
block country Lebanon
block country "Saint Lucia"
block country "Sri Lanka"
block country Liberia
block country Lesotho
block country Lithuania
block country Luxembourg
block country Latvia
block country "Libyan Arab Jamahiriya"
block country Morocco
block country Monaco
block country "Moldova, Republic of"
block country Montenegro
block country Madagascar
block country "Marshall Islands"
block country Macedonia
block country Mali
block country Myanmar
block country Mongolia
block country Macao
block country "Northern Mariana Islands"
block country Mauritania
block country Montserrat
block country Malta
block country Mauritius
block country Maldives
block country Malawi
block country Mexico
block country Malaysia
block country Mozambique
block country Namibia
block country "New Caledonia"
block country Niger
block country "Norfolk Island"
block country Nigeria
block country Nicaragua
block country Nepal
block country Nauru
block country Niue
block country "Other Country"
block country Oman
block country Panama
block country Peru
block country "French Polynesia"
block country "Papua New Guinea"
block country Philippines
block country Pakistan
block country Poland
block country "Saint Pierre and Miquelon"
block country "Puerto Rico"
block country "Palestinian Territory"
block country Portugal
block country Palau
block country Paraguay
block country Qatar
block country Reunion
block country Romania
block country Serbia
block country "Russian Federation"
block country Rwanda
block country "Saudi Arabia"
block country "Solomon Islands"
block country Seychelles
block country Sudan
block country Singapore
block country "Saint Helena"
block country Slovenia
block country "Svalbard and Jan Mayen"
block country Slovakia
block country "Sierra Leone"
block country "San Marino"
block country Senegal
block country Somalia
block country Suriname
block country "Sao Tome and Principe"
block country "El Salvador"
block country "Syrian Arab Republic"
block country Swaziland
block country "Turks and Caicos Islands"
block country Chad
block country "French Southern Territories"
block country Togo
block country Thailand
block country Tajikistan
block country Tokelau
block country Turkmenistan
block country Tunisia
block country Tonga
block country Turkey
block country "Trinidad and Tobago"
block country Tuvalu
block country Taiwan
block country "Tanzania, United Republic of"
block country Ukraine
block country Uganda
block country Uruguay
block country Uzbekistan
block country "Holy See (Vatican City State)"
block country "Saint Vincent and the Grenadines"
block country Venezuela
block country "Virgin Islands, British"
block country "Virgin Islands, U.S."
block country Vietnam
block country Vanuatu
block country "Wallis and Futuna"
block country Samoa
block country Yemen
block country Mayotte
block country "South Africa"
block country Zambia
block country Zimbabwe
block country "Saint Martin"
block country Pitcairn
block country Timor-Leste
block country Curacao
block country "Sint Maarten"
block country "Bonaire, Saint Eustatius and Saba"') + "`nblock country $cote`nblock country $NKorea`nblock country $Lao`nexit`ncommit"
            #Appflow settings
            $Appflow = ("appflow
real-time data-collection
external-collector
flows
reporting-format netflow-9
server address name Auvik
no vpn-source-ip
port 2055
send templates
send static-flows
static-flows applications
static-flows viruses
static-flows spyware
static-flows intrusions
no static-flows location-map
static-flows services
static-flows rating-map
no static-flows table-map
no static-flows column-map
dynamic-flows connections
dynamic-flows users
dynamic-flows urls
dynamic-flows url-ratings
dynamic-flows vpns
no dynamic-flows devices
no dynamic-flows spams
no dynamic-flows locations
dynamic-flows voips
no ipfix-reports top-10-apps
no ipfix-reports interface-statistics
no ipfix-reports core-utilization
no ipfix-reports memory-utilization
no ipfix-reports system-logs
no ipfix-reports sdwan-probe
report open
report close
no report active-timeout
no report kilobytes-exchanged
report update threat
report update application
report update user
report update vpn-tunnel
report update url
exit
exit"
            )
        If($2ndISPYes_RadioButton.Checked){
            $SWConfig3 = 
            ("conf t
$geoip
administration
firewall-name $RouterName
firewall-domain-name $Domain
admin name $NewAdmin
admin password old-password $CurrentPassword new-password $NewPassword confirm-password $NewPassword
exit
dns server static primary $DNSP
dns server static secondary $DNSS
dns server static tertiary $DNSTertiary
commit
address-object ipv4 'Timeclock Private'
name 'Timeclock Private'
zone LAN
host $TimeClock
exit
address-object ipv4 'Auvik'
name 'Auvik'
zone LAN
host $Auvik
exit
$Appflow
interface $LANPort
ip-assignment LAN static
ip $LANIP netmask $LANSM
exit
exit
commit
dhcp
enable
scope dynamic $LANDHCP $LANDHCPEnd
netmask $LANSM
default-gateway $LANIP
dns server inherit
domain-name $Domain
exit
exit
commit
interface $PWANPort
ip-assignment WAN static
ip $PWANIP netmask $PWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $PWANGW
exit
comment $PWANC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit
interface $SWANPort
ip-assignment WAN static
ip $SWANIP netmask $SWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $SWANGW
exit
comment $SWANC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit")
            $Config = "$home\Downloads\$SiteCode-WAN.txt"
            write-output ($SWConfig3) >> $Config
        } if($2ndISPNo_RadioButton.Checked) {
            $SWSingleConfig3 = 
            ("conf t
$geoip
administration
firewall-name $RouterName
firewall-domain-name $Domain
admin name $NewAdmin
admin password old-password $CurrentPassword new-password $NewPassword confirm-password $NewPassword
exit
dns server static primary $DNSP
dns server static secondary $DNSS
dns server static tertiary $DNSTertiary
commit
address-object ipv4 'Timeclock Private'
name 'Timeclock Private'
zone LAN
host $TimeClock
exit
address-object ipv4 'Auvik'
name 'Auvik'
zone LAN
host $Auvik
exit
$Appflow
interface $LANPort
ip-assignment LAN static
ip $ netmask $LANSM
exit
exit
commit
dhcp
enable
scope dynamic $LANDHCP $LANDHCPEnd
netmask $LANSM
default-gateway $
dns server inherit
domain-name $Domain
exit
exit
commit
interface $PWANPort
ip-assignment WAN static
ip $PWANIP netmask $PWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $PWANGW
exit
comment $PWANC
management ssh
management https
management ping
user-login https
no shutdown-port
exit
commit
interface $PWANPort
ip-assignment WAN static
ip $PWAN netmask $PWANNM
dns primary 8.8.8.8
dns secondary 8.8.4.4
dns tertiary 1.1.1.1
gateway $PWANGW
exit
comment $PWANC
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
            $Initial_Configuration_Form.Close()
    } catch {
        $ErrorStatus_Label.text = $_.Exception.Message
    }
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'initial_configuration.designer.ps1')
$Initial_Configuration_Form.ShowDialog()