
#This function is to verify an acceptable input for the sitecode
Function CheckSITE{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^[A-Z]{1,12}$", Options = 'None')]
        [String]$SiteCode
    )
    }
Function CheckDomain{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^[A-Z]+\.[A-Z]+$")]
        [String]$Domain
    )
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
    [string]$SiteCode = $SiteCodeTextBox.text
        try {
            CheckSITE $SiteCode
        } catch {
            $ErrorStatus_Label.Text = "Verify the site code is between 1-12 characters and using capital letters."
            return
        }
    [string]$Global:CurrentPassword = $CurrentPasswordTextBox.text
    [string]$NewAdmin = $NewAdminTextBox.text
    [string]$Global:AdminName = $CurrentAdminTextBox.text
    [string]$Domain = $DomainNameTextBox.text
        try {
            CheckDomain $Domain
        } catch {
            $ErrorStatus_Label.Text = "There may be incorrect formatting with the domain."
            return
        }
    [string]$RouterName = $SiteCodeTextBox.text + "-RTR"
    [string]$NewPassword = (('"') + (Scramble-String $password) + ('"'))
    [string]$SWConfig1 = ("conf t
administration
firewall-name $RouterName
firewall-domain-name $Domain
admin name $NewAdmin
admin password old-password $CurrentPassword new-password $NewPassword confirm-password $NewPassword
exit
commit")
    $Config = "$home\Downloads\$SiteCode-admin.txt"
    write-output ($SWConfig1) >> $Config
        $wshell = New-Object -ComObject Wscript.Shell
        $wshell.Popup("Check your Downloads folder to verify output.", 0, "Done", 0x1)
            $CheckDownload.close()
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'administration-form.designer.ps1')
$CheckDownload.ShowDialog()
