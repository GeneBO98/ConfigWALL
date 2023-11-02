$Form1_Load = {
}
$Done_Click = {
}
$TextBox3_TextChanged = {
}
$OldPassword_Click = {
}
$DomainName_Click = {
}
$CheckDown_DC = {
    Invoke-Item $home\Downloads
}
$No_Clicked = {
    If($True){
        $WANSecondaryCommentLabel.Visible = $False
        $SWANTitle.Visible = $False
        $WANSecondaryLabel.Visible = $False
        $SWANNetmaskLabel.Visible = $False
        $WANSecondaryGWLabel.Visible = $False
        $SecondaryWANPortLabel.Visible = $False
        $WANSecondaryTextBox.Visible = $False
        $SWANNetmaskTextBox.Visible = $False
        $WANSecondaryGWTextBox.Visible = $False
        $WANSecondaryCommentTextBox.Visible = $False
        $SecondaryWANPortTextBox.Visible = $False
    }
}
$No_Checked = {
}
$Yes_Clicked = {
    If($True){
        $WANSecondaryCommentLabel.Visible = $True
        $SWANTitle.Visible = $True
        $WANSecondaryLabel.Visible = $True
        $SWANNetmaskLabel.Visible = $True
        $WANSecondaryGWLabel.Visible = $True
        $SecondaryWANPortLabel.Visible = $True
        $WANSecondaryTextBox.Visible = $True
        $SWANNetmaskTextBox.Visible = $True
        $WANSecondaryGWTextBox.Visible = $True
        $WANSecondaryCommentTextBox.Visible = $True
        $SecondaryWANPortTextBox.Visible = $True  
    }
}
$Yes_Checked = {
}
$Done_MouseClick = {
    If($2ndISPYes.Checked){
        Function 2WANFullConfig {
            Function ConfigLAN {
                #This loop is going to make sure that the input for the LAN IP address fits the formatting requirement
                Param([ValidateLength(15,15)]
                [String]$PLAN
                )
                If ($PLAN.length -ne 15){
                    Write-Host "Please use the format provided for the LAN IP. Delete the config file and try again."
                }
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
                    }
            [string]$SiteCode = $SiteCodeTextBox.text
            [string]$CurrentPassword = $CurrentPasswordTextBox.text
            [string]$NewAdmin = $NewAdminTextBox.text
            [string]$Domain = $DomainNameTextBox.text
            [string]$RouterName = $SiteCodeTextBox.text + "-RTR01"
            [string]$NewPassword = $SiteCodeTextBox.text+"!2964gts"
            [String]$PLAN = $PrimaryLanTextBox.text
            [String]$LANSM = $LANSubnetMaskTextBox.text
            [String]$PLANPort = $PrimaryLANPortTextBox.text
            #DNS settings
            $DNSP = $DNSPrimaryTextBox.text
            $DNSS = $DNSSecondaryTextBox.text
            $DNSTertiary = "8.8.8.8"
            #WAN Settings
            $WANP = $WANPrimaryTextBox.text
            $PWANNM = $PWANNetmaskTextBox.text
            $WANPGW = $WANPrimaryGWTextBox.text
            $WANPC = '"' + ($WANPrimaryCommentTextBox.text) + '"'
            $PWANPort = $PrimaryWANPortTextBox.text
            $WANS = $WANSecondaryTextBox.text
            $SWANNM = $SWANNetmaskTextBox.text
            $WANSGW = $WANSecondaryGWTextBox.text
            $WANSC = '"' + ($WANSecondaryCommentTextBox.text) + '"'
            $SWANPort = $SecondaryWANPortTextBox.text
            #Default Timeclock Object
            $TCLength = $PrimaryLan.Length - 2
            $TCAdd = $PrimaryLan.Substring(0,$TCLength)
            $TimeClock = $TCAdd + '42'
            #Auvik address object
            $Auvik = $TCAdd + '5'
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
            $Appflow = "appflow
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
domain-name $Domain
exit
exit
commit
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
                } 2WANFullConfig
        } if($2ndISPNo.Checked) {
            Function WANFullConfig {
                Function ConfigLAN {
                    #This loop is going to make sure that the input for the LAN IP address fits the formatting requirement
                    Param([ValidateLength(15,15)]
                    [String]$PLAN
                    )
                    If ($PLAN.length -ne 15){
                        Write-Host "Please use the format provided for the LAN IP. Delete the config file and try again."
                    }
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
                        }
                [string]$SiteCode = $SiteCodeTextBox.text
                [string]$CurrentPassword = $CurrentPasswordTextBox.text
                [string]$NewAdmin = $NewAdminTextBox.text
                [string]$Domain = $DomainNameTextBox.text
                [string]$RouterName = $SiteCodeTextBox.text + "-RTR01"
                [string]$NewPassword = $SiteCodeTextBox.text+"!2964gts"
                [String]$PLAN = $PrimaryLanTextBox.text
                [String]$LANSM = $LANSubnetMaskTextBox.text
                [String]$PLANPort = $PrimaryLANPortTextBox.text
                #DNS settings
                $DNSP = $DNSPrimaryTextBox.text
                $DNSS = $DNSSecondaryTextBox.text
                $DNSTertiary = "8.8.8.8"
                #WANSettings
                $WANP = $WANPrimaryTextBox.text
                $PWANNM = $PWANNetmaskTextBox.text
                $WANPGW = $WANPrimaryGWTextBox.text
                $WANPC = '"' + ($WANPrimaryCommentTextBox.text) + '"'
                $PWANPort = $PrimaryWANPortTextBox.text
                #Default Timeclock Object
                $TCLength = $PrimaryLan.Length - 2
                $TCAdd = $PrimaryLan.Substring(0,$TCLength)
                $TimeClock = $TCAdd + '42'
                #Auvik address object
                $Auvik = $TCAdd + '5'
                #List of countries to be blocked in Geo-IP later
                #These countries declared as variables include ' in their names so I had to set them separately
                $NKorea = ("Korea, Democratic People's Republic of")
                $Cote = ("Cote d'Ivoire")
                $Lao = ("Lao People's Democratic Republic")
                $geoip = (
                    'conf t
                    geo-ip
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
                $Appflow = "appflow
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
domain-name $Domain
exit
exit
commit
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
                } WANFullConfig
        }
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'init_config.designer.ps1')
$Init_Config_Form.ShowDialog()