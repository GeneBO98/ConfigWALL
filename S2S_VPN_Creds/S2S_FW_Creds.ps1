$Done_MouseClick = {
    $Site1Password = $Password1_TextBox.text
    $Site1AdminName = $Username1_TextBox.text
    $Site2Password = $Password2_TextBox.text
    $Site2AdminName = $Username2_TextBox.text
    try {
    #Initialize the progress bar
    $FW1_ProgressBar.Maximum = ($S2SConfig1 | Measure-Object -Line).Lines;
    $FW1_ProgressBar.Step = 1;
    $FW1_ProgressBar.Value = 0;
        $SSHPassword = ConvertTo-SecureString $Site1Password -AsPlainText -Force
        Start-Sleep -Milliseconds 100
        $sshcreds = New-Object System.Management.Automation.PSCredential($Site1AdminName, $SSHPassword)
        Start-Sleep -Milliseconds 100
        $session = New-SSHSession -ComputerName $Site1PubIP -Credential $sshcreds -AcceptKey:$true
        Start-Sleep -Milliseconds 100
        #Starts the SSH Stream session required by SonicWALL
        $SSHStream = New-SSHShellStream -SessionID $session.sessionID
        Start-Sleep -Milliseconds 100
        $SSHstream = $session.Session.CreateShellStream("Sonic",0,0,0,0,1024)
        Start-Sleep -Milliseconds 100
        #Pulls each line out of the config file and submits it to the SSH session established to the firewall
        $Ready1 = $SSHStream.CanWrite
        if($Ready1){
        foreach($line in Get-Content $Output1) {
        $SSHStream.WriteLine($line)
        $ErrorOutput_RichTextBox.Text = $SSHstream.read()
        Start-Sleep -Milliseconds 100

        ## - Progress bar method to increment the slider:
        $FW1_ProgressBar.PerformStep();    
        }
    }
    } catch {
        $ErrorOutput_RichTextBox.Text = $_.Exception.Message
        $ErrorStatus_Label.Text = "Firewall with error: Firewall 1"
        return
    }
    Remove-SSHSession -SessionId $session.SessionId
    try {
    #Initialize the progress bar
    $FW2_ProgressBar.Maximum = ($S2SConfig2 | Measure-Object -Line).Lines;
    $FW2_ProgressBar.Step = 1;
    $FW2_ProgressBar.Value = 0;

        $SSHPassword2 = ConvertTo-SecureString $Site2Password -AsPlainText -Force
        Start-Sleep -Milliseconds 100
        $sshcreds2 = New-Object System.Management.Automation.PSCredential($Site2AdminName, $SSHPassword2)
        Start-Sleep -Milliseconds 100
        $session2 = New-SSHSession -ComputerName $Site2PubIP -Credential $sshcreds2 -AcceptKey:$true
        Start-Sleep -Milliseconds 100
        #Starts the SSH Stream session required by SonicWALL
        $SSHStream2 = New-SSHShellStream -SessionID $session2.sessionID
        Start-Sleep -Milliseconds 100
        $SSHstream2 = $session2.Session.CreateShellStream("Sonic",0,0,0,0,1024)
        Start-Sleep -Milliseconds 100
        #Pulls each line out of the config file and submits it to the SSH session established to the firewall
        $Ready2 = $SSHStream.CanWrite
        if($Ready2){
        foreach($line in Get-Content $Output2) {
        $SSHStream2.WriteLine($line)
        $ErrorOutput_RichTextBox.Text = $SSHstream2.read()
        Start-Sleep -Milliseconds 100
        
        ## - Progress bar method to increment the slider:
        $FW2_ProgressBar.PerformStep();    
        }
    }
    } catch {
        $ErrorOutput_RichTextBox.Text = $_.Exception.Message
        $ErrorStatus_Label.Text = "Firewall with error: Firewall 2"
        return
    }
    $S2S_Creds.close()
        $wshell = New-Object -ComObject Wscript.Shell
        $wshell.Popup("Finished. Verify the tunnel is up.", 0, "Done", 0x1)
    }
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 's2s_fw_creds.designer.ps1')
$S2S_Creds.ShowDialog()