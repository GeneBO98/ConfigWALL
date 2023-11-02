$Done_MouseClick = {
    try {
    Function SetNEWIP {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$")]
        [String[]]$SonicwallIP
        )
        }
    $Global:SonicwallIP = $NewFWIP_TextBox.text
    SetNewIP $SonicwallIP
    $NewFWIP_Form.close()
    } catch {
        if($SonicwallIP){
        $ErrorOutStatus_Label.text = "Please enter a proper IPV4 address."
        }
    }
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'newip.designer.ps1')
$NewFWIP_Form.ShowDialog()