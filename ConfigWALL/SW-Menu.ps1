$SW_Config_Menu_Load = {
}
$NewSWIP_Click = {
    . $PSScriptRoot\NewIPPopup\NewIP.ps1
}
$Apply_Click = {
    Function SSHConnect {
        if (echo $CurrentPassword -eq "null") {
            $CurrentPassword = Read-Host -Prompt 'Enter the current password. (eg. password)'
        } if (echo $AdminName -eq "null") {
            $AdminName = Read-Host -Prompt 'Enter the current admin username'
            Start-Sleep -s 2
        $SSHPassword = ConvertTo-SecureString $CurrentPassword -AsPlainText -Force
        $sshcreds = New-Object System.Management.Automation.PSCredential($AdminName, $SSHPassword)
        $session = New-SSHSession -ComputerName $SonicwallIP -Credential $sshcreds -AcceptKey:$true
        #Starts the SSH Stream session required by SonicWALL
        $SSHStream = New-SSHShellStream -SessionID $session.sessionID
        $SSHstream = $session.Session.CreateShellStream("Sonic",0,0,0,0,1024)

        #Pulls each line out of the config file and submits it to the SSH session established to the firewall
        foreach($line in Get-Content $Config) {
        $SSHStream.WriteLine($line)
        Start-Sleep -s 1
        }
        #Can show progress of commands with this
        $SSHStream.read()
        } else {
            continue
    }
}
SSHConnect #This runs the function when using the menu
}
$ClearSSH_Click = {
    Function ClearSSH {
        #This just clears the SSH Session ID if the script was used already
    if ($True) {
        Start-Sleep -s 1
        if ($session.SessionID -ne 'null'){
            Remove-SSHSession -SessionId $session.SessionId
            } else {
                continue
            }
        } 
    } ClearSSH
}
$ClearVar_Click = {
    Function ClearVariable {
        Remove-Variable * -ErrorAction SilentlyContinue
    }
    ClearVariable #This runs the function when using the menu
}
$CapATP_Click = {
    Function capture {
        $captureatp = (
"conf t
capture-atp
enable
location cloud
no local-name-or-ip
file-type exe
file-type pdf
file-type office
file-type officex
file-type archives
file-size default
await-verdict allow
no exclude address for-capture-atp
exit"
)
        $Config = "$home\Downloads\$SiteCode-catp.txt"
        Write-Output ($captureatp) >> $Config
        }
        capture #This runs the function when using the menu
            $wshell = New-Object -ComObject Wscript.Shell
            $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
}
$Geo_Click = {
    Function geo 
            {
            $NKorea = ("'Korea, Democratic People's Republic of'")
            $Cote = ('"' + "Cote d'Ivoire" + '"')
            $Lao = ('"' + "Lao People's Democratic Republic" + '"')
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
                        $Config = "$home\Downloads\$SiteCode-geo.txt"
                        Write-Output ($geoip) >> $Config
                        }
            geo #This runs the function when using the menu
                $wshell = New-Object -ComObject Wscript.Shell
                $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
}
$Init_Setup_Click = {
    . $PSScriptRoot\Initial_Configuration\Initial_Configuration.ps1
}
$WAN_Click = {
    . $PSScriptRoot\Configure_WAN\ConfigWAN.ps1
}
$LAN_Click = {
    . $PSScriptRoot\Configure_LAN\Configure_LAN.ps1
}
$Quit_Click = {
    Function QuitMenu {
        pause
        if ($True) {
            write-host("Have a good one.")
            #Removes the variables and closes the SSH session
            if ($session.SessionID -ne 'null'){
                Remove-SSHSession -SessionId $session.SessionId -ErrorAction SilentlyContinue
                Start-Sleep -s 2
                Remove-Variable * -ErrorAction SilentlyContinue
                } else {
                    continue
                }
        }
    }
}
$Admin_Click = {
    . $PSScriptRoot\Administration\Administration-Form.ps1
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'sw-menu.designer.ps1')
$SW_Config_Menu.ShowDialog()