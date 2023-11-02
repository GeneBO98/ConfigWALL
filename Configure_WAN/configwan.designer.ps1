$ConfigWANForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$WANPrimaryComment = $null
[System.Windows.Forms.Label]$WANSecondaryComment = $null
[System.Windows.Forms.Label]$WANPrimaryGW = $null
[System.Windows.Forms.Label]$PWANNetmask = $null
[System.Windows.Forms.Label]$WANPrimary = $null
[System.Windows.Forms.Label]$SWANPrompt = $null
[System.Windows.Forms.RadioButton]$2ndISPYes = $null
[System.Windows.Forms.RadioButton]$2ndISPNo = $null
[System.Windows.Forms.Label]$SWANInfoTitle = $null
[System.Windows.Forms.Label]$WANSecondary = $null
[System.Windows.Forms.Label]$SWANNetmask = $null
[System.Windows.Forms.Label]$WANSecondaryGW = $null
[System.Windows.Forms.Label]$SecondaryWANPort = $null
[System.Windows.Forms.Label]$PrimaryWANPort = $null
[System.Windows.Forms.Button]$Done = $null
[System.Windows.Forms.Button]$Cancel = $null
[System.Windows.Forms.TextBox]$WANPrimaryTextBox = $null
[System.Windows.Forms.TextBox]$PWANNetmaskTextBox = $null
[System.Windows.Forms.TextBox]$WANPrimaryGWTextBox = $null
[System.Windows.Forms.TextBox]$WANPrimaryCommentTextBox = $null
[System.Windows.Forms.TextBox]$PrimaryWANPortTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryTextBox = $null
[System.Windows.Forms.TextBox]$SWANNetmaskTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryGWTextBox = $null
[System.Windows.Forms.TextBox]$WANSecondaryCommentTextBox = $null
[System.Windows.Forms.TextBox]$SecondaryWANPortTextBox = $null
[System.Windows.Forms.StatusStrip]$ErrorsOutput_StatusStrip = $null
[System.Windows.Forms.ToolStripStatusLabel]$ErrorStatus_Label = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'configwan.resources.ps1')
$WANPrimaryComment = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondaryComment = (New-Object -TypeName System.Windows.Forms.Label)
$WANPrimaryGW = (New-Object -TypeName System.Windows.Forms.Label)
$PWANNetmask = (New-Object -TypeName System.Windows.Forms.Label)
$WANPrimary = (New-Object -TypeName System.Windows.Forms.Label)
$SWANPrompt = (New-Object -TypeName System.Windows.Forms.Label)
$2ndISPYes = (New-Object -TypeName System.Windows.Forms.RadioButton)
$2ndISPNo = (New-Object -TypeName System.Windows.Forms.RadioButton)
$SWANInfoTitle = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondary = (New-Object -TypeName System.Windows.Forms.Label)
$SWANNetmask = (New-Object -TypeName System.Windows.Forms.Label)
$WANSecondaryGW = (New-Object -TypeName System.Windows.Forms.Label)
$SecondaryWANPort = (New-Object -TypeName System.Windows.Forms.Label)
$PrimaryWANPort = (New-Object -TypeName System.Windows.Forms.Label)
$Done = (New-Object -TypeName System.Windows.Forms.Button)
$Cancel = (New-Object -TypeName System.Windows.Forms.Button)
$WANPrimaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PWANNetmaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANPrimaryGWTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANPrimaryCommentTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PrimaryWANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SWANNetmaskTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryGWTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$WANSecondaryCommentTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$SecondaryWANPortTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$ErrorsOutput_StatusStrip = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$ErrorStatus_Label = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$ErrorsOutput_StatusStrip.SuspendLayout()
$ConfigWANForm.SuspendLayout()
#
#WANPrimaryComment
#
$WANPrimaryComment.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]157))
$WANPrimaryComment.Name = [System.String]'WANPrimaryComment'
$WANPrimaryComment.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimaryComment.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]60))
$WANPrimaryComment.TabIndex = [System.Int32]0
$WANPrimaryComment.Text = [System.String]'Enter the description for this connection. (ie. Comcast Coax)'
#
#WANSecondaryComment
#
$WANSecondaryComment.BackColor = [System.Drawing.SystemColors]::Info
$WANSecondaryComment.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryComment.ForeColor = [System.Drawing.SystemColors]::InfoText
$WANSecondaryComment.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]457))
$WANSecondaryComment.Name = [System.String]'WANSecondaryComment'
$WANSecondaryComment.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondaryComment.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryComment.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]60))
$WANSecondaryComment.TabIndex = [System.Int32]0
$WANSecondaryComment.Text = [System.String]'Enter the description for this connection. (ie. Comcast Coax)'
$WANSecondaryComment.Visible = $false
#
#WANPrimaryGW
#
$WANPrimaryGW.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]122))
$WANPrimaryGW.Name = [System.String]'WANPrimaryGW'
$WANPrimaryGW.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimaryGW.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]35))
$WANPrimaryGW.TabIndex = [System.Int32]1
$WANPrimaryGW.Text = [System.String]'Enter the gateway for the primary Public IP.'
#
#PWANNetmask
#
$PWANNetmask.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]87))
$PWANNetmask.Name = [System.String]'PWANNetmask'
$PWANNetmask.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PWANNetmask.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]35))
$PWANNetmask.TabIndex = [System.Int32]2
$PWANNetmask.Text = [System.String]'Enter the primary public IP address netmask.'
#
#WANPrimary
#
$WANPrimary.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]52))
$WANPrimary.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$WANPrimary.Name = [System.String]'WANPrimary'
$WANPrimary.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANPrimary.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]35))
$WANPrimary.TabIndex = [System.Int32]3
$WANPrimary.Text = [System.String]'Enter the primary public IP address.'
#
#SWANPrompt
#
$SWANPrompt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]277))
$SWANPrompt.Name = [System.String]'SWANPrompt'
$SWANPrompt.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANPrompt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]35))
$SWANPrompt.TabIndex = [System.Int32]4
$SWANPrompt.Text = [System.String]'Is there a secondary ISP?'
$SWANPrompt.add_Click($SWANPrompt_Click)
#
#2ndISPYes
#
$2ndISPYes.ForeColor = [System.Drawing.Color]::Green
$2ndISPYes.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]220,[System.Int32]277))
$2ndISPYes.Name = [System.String]'2ndISPYes'
$2ndISPYes.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPYes.TabIndex = [System.Int32]5
$2ndISPYes.Text = [System.String]'Yes'
$2ndISPYes.UseVisualStyleBackColor = $true
$2ndISPYes.add_MouseClick($Yes_Mouse_Click)
#
#2ndISPNo
#
$2ndISPNo.BackColor = [System.Drawing.SystemColors]::Info
$2ndISPNo.Checked = $true
$2ndISPNo.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$2ndISPNo.ForeColor = [System.Drawing.Color]::Red
$2ndISPNo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]275,[System.Int32]277))
$2ndISPNo.Name = [System.String]'2ndISPNo'
$2ndISPNo.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$2ndISPNo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]25))
$2ndISPNo.TabIndex = [System.Int32]5
$2ndISPNo.TabStop = $true
$2ndISPNo.Text = [System.String]'No'
$2ndISPNo.UseVisualStyleBackColor = $true
$2ndISPNo.add_MouseClick($No_Mouse_Click)
#
#SWANInfoTitle
#
$SWANInfoTitle.BackColor = [System.Drawing.SystemColors]::Menu
$SWANInfoTitle.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$SWANInfoTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SWANInfoTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]312))
$SWANInfoTitle.Name = [System.String]'SWANInfoTitle'
$SWANInfoTitle.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANInfoTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]40))
$SWANInfoTitle.TabIndex = [System.Int32]6
$SWANInfoTitle.Text = [System.String]'Secondary WAN Information'
$SWANInfoTitle.Visible = $false
#
#WANSecondary
#
$WANSecondary.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]352))
$WANSecondary.Name = [System.String]'WANSecondary'
$WANSecondary.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondary.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]314,[System.Int32]35))
$WANSecondary.TabIndex = [System.Int32]7
$WANSecondary.Text = [System.String]'Enter the secondary public IP address.'
$WANSecondary.Visible = $false
#
#SWANNetmask
#
$SWANNetmask.BackColor = [System.Drawing.SystemColors]::Info
$SWANNetmask.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SWANNetmask.ForeColor = [System.Drawing.SystemColors]::InfoText
$SWANNetmask.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]387))
$SWANNetmask.Name = [System.String]'SWANNetmask'
$SWANNetmask.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SWANNetmask.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANNetmask.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]308,[System.Int32]35))
$SWANNetmask.TabIndex = [System.Int32]7
$SWANNetmask.Text = [System.String]'Enter the secondary public IP netmask.'
$SWANNetmask.Visible = $false
#
#WANSecondaryGW
#
$WANSecondaryGW.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]422))
$WANSecondaryGW.Name = [System.String]'WANSecondaryGW'
$WANSecondaryGW.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$WANSecondaryGW.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]35))
$WANSecondaryGW.TabIndex = [System.Int32]8
$WANSecondaryGW.Text = [System.String]'Enter the gateway for the secondary Public IP.'
$WANSecondaryGW.Visible = $false
#
#SecondaryWANPort
#
$SecondaryWANPort.BackColor = [System.Drawing.SystemColors]::Info
$SecondaryWANPort.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANPort.ForeColor = [System.Drawing.SystemColors]::InfoText
$SecondaryWANPort.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]517))
$SecondaryWANPort.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]35))
$SecondaryWANPort.Name = [System.String]'SecondaryWANPort'
$SecondaryWANPort.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$SecondaryWANPort.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPort.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]60))
$SecondaryWANPort.TabIndex = [System.Int32]0
$SecondaryWANPort.Text = [System.String]'What interface will be used for secondary LAN on the Sonicwall? (ie. X2)'
$SecondaryWANPort.Visible = $false
#
#PrimaryWANPort
#
$PrimaryWANPort.BackColor = [System.Drawing.SystemColors]::Info
$PrimaryWANPort.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANPort.ForeColor = [System.Drawing.SystemColors]::InfoText
$PrimaryWANPort.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]217))
$PrimaryWANPort.Name = [System.String]'PrimaryWANPort'
$PrimaryWANPort.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$PrimaryWANPort.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPort.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]60))
$PrimaryWANPort.TabIndex = [System.Int32]0
$PrimaryWANPort.Text = [System.String]'What interface will be used for primary WAN on the Sonicwall? (ie. X1)'
#
#Done
#
$Done.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Done.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Done.ForeColor = [System.Drawing.Color]::DarkGreen
$Done.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]523,[System.Int32]264))
$Done.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]15,[System.Int32]3,[System.Int32]3))
$Done.Name = [System.String]'Done'
$Done.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Done.TabIndex = [System.Int32]9
$Done.Text = [System.String]'Done'
$Done.UseVisualStyleBackColor = $false
$Done.add_MouseClick($Mouse_Click)
#
#Cancel
#
$Cancel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Cancel.BackColor = [System.Drawing.SystemColors]::ButtonFace
$Cancel.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Cancel.ForeColor = [System.Drawing.Color]::Red
$Cancel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]602,[System.Int32]264))
$Cancel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]15,[System.Int32]3,[System.Int32]3))
$Cancel.Name = [System.String]'Cancel'
$Cancel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]33))
$Cancel.TabIndex = [System.Int32]10
$Cancel.Text = [System.String]'Cancel'
$Cancel.UseVisualStyleBackColor = $false
#
#WANPrimaryTextBox
#
$WANPrimaryTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANPrimaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]52))
$WANPrimaryTextBox.Name = [System.String]'WANPrimaryTextBox'
$WANPrimaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$WANPrimaryTextBox.TabIndex = [System.Int32]11
#
#PWANNetmaskTextBox
#
$PWANNetmaskTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PWANNetmaskTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PWANNetmaskTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PWANNetmaskTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PWANNetmaskTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PWANNetmaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]87))
$PWANNetmaskTextBox.Name = [System.String]'PWANNetmaskTextBox'
$PWANNetmaskTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PWANNetmaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PWANNetmaskTextBox.TabIndex = [System.Int32]11
#
#WANPrimaryGWTextBox
#
$WANPrimaryGWTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANPrimaryGWTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANPrimaryGWTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANPrimaryGWTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANPrimaryGWTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANPrimaryGWTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]122))
$WANPrimaryGWTextBox.Name = [System.String]'WANPrimaryGWTextBox'
$WANPrimaryGWTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryGWTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$WANPrimaryGWTextBox.TabIndex = [System.Int32]11
#
#WANPrimaryCommentTextBox
#
$WANPrimaryCommentTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANPrimaryCommentTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANPrimaryCommentTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANPrimaryCommentTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANPrimaryCommentTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANPrimaryCommentTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]475,[System.Int32]157))
$WANPrimaryCommentTextBox.Name = [System.String]'WANPrimaryCommentTextBox'
$WANPrimaryCommentTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANPrimaryCommentTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$WANPrimaryCommentTextBox.TabIndex = [System.Int32]11
#
#PrimaryWANPortTextBox
#
$PrimaryWANPortTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$PrimaryWANPortTextBox.BackColor = [System.Drawing.SystemColors]::Window
$PrimaryWANPortTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$PrimaryWANPortTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$PrimaryWANPortTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$PrimaryWANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]217))
$PrimaryWANPortTextBox.Name = [System.String]'PrimaryWANPortTextBox'
$PrimaryWANPortTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$PrimaryWANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$PrimaryWANPortTextBox.TabIndex = [System.Int32]11
#
#WANSecondaryTextBox
#
$WANSecondaryTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANSecondaryTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]352))
$WANSecondaryTextBox.Name = [System.String]'WANSecondaryTextBox'
$WANSecondaryTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$WANSecondaryTextBox.TabIndex = [System.Int32]11
$WANSecondaryTextBox.Visible = $false
#
#SWANNetmaskTextBox
#
$SWANNetmaskTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SWANNetmaskTextBox.BackColor = [System.Drawing.SystemColors]::Window
$SWANNetmaskTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SWANNetmaskTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SWANNetmaskTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SWANNetmaskTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]387))
$SWANNetmaskTextBox.Name = [System.String]'SWANNetmaskTextBox'
$SWANNetmaskTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SWANNetmaskTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SWANNetmaskTextBox.TabIndex = [System.Int32]11
$SWANNetmaskTextBox.Visible = $false
#
#WANSecondaryGWTextBox
#
$WANSecondaryGWTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANSecondaryGWTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryGWTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryGWTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryGWTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryGWTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]422))
$WANSecondaryGWTextBox.Name = [System.String]'WANSecondaryGWTextBox'
$WANSecondaryGWTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryGWTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$WANSecondaryGWTextBox.TabIndex = [System.Int32]11
$WANSecondaryGWTextBox.Visible = $false
#
#WANSecondaryCommentTextBox
#
$WANSecondaryCommentTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$WANSecondaryCommentTextBox.BackColor = [System.Drawing.SystemColors]::Window
$WANSecondaryCommentTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$WANSecondaryCommentTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$WANSecondaryCommentTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$WANSecondaryCommentTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]475,[System.Int32]457))
$WANSecondaryCommentTextBox.Name = [System.String]'WANSecondaryCommentTextBox'
$WANSecondaryCommentTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$WANSecondaryCommentTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]29))
$WANSecondaryCommentTextBox.TabIndex = [System.Int32]11
$WANSecondaryCommentTextBox.Visible = $false
#
#SecondaryWANPortTextBox
#
$SecondaryWANPortTextBox.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$SecondaryWANPortTextBox.BackColor = [System.Drawing.SystemColors]::Window
$SecondaryWANPortTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12))
$SecondaryWANPortTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$SecondaryWANPortTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$SecondaryWANPortTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]525,[System.Int32]517))
$SecondaryWANPortTextBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]3,[System.Int32]3,[System.Int32]35))
$SecondaryWANPortTextBox.Name = [System.String]'SecondaryWANPortTextBox'
$SecondaryWANPortTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$SecondaryWANPortTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]29))
$SecondaryWANPortTextBox.TabIndex = [System.Int32]11
$SecondaryWANPortTextBox.Visible = $false
#
#ErrorsOutput_StatusStrip
#
$ErrorsOutput_StatusStrip.BackColor = [System.Drawing.SystemColors]::Info
$ErrorsOutput_StatusStrip.Dock = [System.Windows.Forms.DockStyle]::Top
$ErrorsOutput_StatusStrip.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($ErrorStatus_Label))
$ErrorsOutput_StatusStrip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$ErrorsOutput_StatusStrip.Name = [System.String]'ErrorsOutput_StatusStrip'
$ErrorsOutput_StatusStrip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]687,[System.Int32]22))
$ErrorsOutput_StatusStrip.TabIndex = [System.Int32]12
$ErrorsOutput_StatusStrip.Text = [System.String]'ErrorsOutput_StatusStrip'
#
#ErrorStatus_Label
#
$ErrorStatus_Label.BackColor = [System.Drawing.Color]::Transparent
$ErrorStatus_Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ErrorStatus_Label.ForeColor = [System.Drawing.Color]::Red
$ErrorStatus_Label.Name = [System.String]'ErrorStatus_Label'
$ErrorStatus_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]17))
$ErrorStatus_Label.Text = [System.String]'Error Output'
#
#ConfigWANForm
#
$ConfigWANForm.AcceptButton = $Done
$ConfigWANForm.AutoScroll = $true
$ConfigWANForm.AutoSize = $true
$ConfigWANForm.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$ConfigWANForm.BackColor = [System.Drawing.SystemColors]::Info
$ConfigWANForm.BackgroundImage = ([System.Drawing.Image]$resources.'$this.BackgroundImage')
$ConfigWANForm.CancelButton = $Cancel
$ConfigWANForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]704,[System.Int32]311))
$ConfigWANForm.Controls.Add($ErrorsOutput_StatusStrip)
$ConfigWANForm.Controls.Add($WANPrimaryTextBox)
$ConfigWANForm.Controls.Add($Cancel)
$ConfigWANForm.Controls.Add($Done)
$ConfigWANForm.Controls.Add($WANSecondaryGW)
$ConfigWANForm.Controls.Add($WANSecondary)
$ConfigWANForm.Controls.Add($SWANInfoTitle)
$ConfigWANForm.Controls.Add($2ndISPYes)
$ConfigWANForm.Controls.Add($SWANPrompt)
$ConfigWANForm.Controls.Add($WANPrimary)
$ConfigWANForm.Controls.Add($PWANNetmask)
$ConfigWANForm.Controls.Add($WANPrimaryGW)
$ConfigWANForm.Controls.Add($WANPrimaryComment)
$ConfigWANForm.Controls.Add($WANSecondaryComment)
$ConfigWANForm.Controls.Add($2ndISPNo)
$ConfigWANForm.Controls.Add($SWANNetmask)
$ConfigWANForm.Controls.Add($SecondaryWANPort)
$ConfigWANForm.Controls.Add($PrimaryWANPort)
$ConfigWANForm.Controls.Add($PWANNetmaskTextBox)
$ConfigWANForm.Controls.Add($WANPrimaryGWTextBox)
$ConfigWANForm.Controls.Add($WANPrimaryCommentTextBox)
$ConfigWANForm.Controls.Add($PrimaryWANPortTextBox)
$ConfigWANForm.Controls.Add($WANSecondaryTextBox)
$ConfigWANForm.Controls.Add($SWANNetmaskTextBox)
$ConfigWANForm.Controls.Add($WANSecondaryGWTextBox)
$ConfigWANForm.Controls.Add($WANSecondaryCommentTextBox)
$ConfigWANForm.Controls.Add($SecondaryWANPortTextBox)
$ConfigWANForm.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ConfigWANForm.ForeColor = [System.Drawing.SystemColors]::InfoText
$ConfigWANForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ConfigWANForm.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]720,[System.Int32]660))
$ConfigWANForm.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]720,[System.Int32]350))
$ConfigWANForm.Text = [System.String]'Configure WAN'
$ErrorsOutput_StatusStrip.ResumeLayout($false)
$ErrorsOutput_StatusStrip.PerformLayout()
$ConfigWANForm.ResumeLayout($false)
$ConfigWANForm.PerformLayout()
Add-Member -InputObject $ConfigWANForm -Name WANPrimaryComment -Value $WANPrimaryComment -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondaryComment -Value $WANSecondaryComment -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANPrimaryGW -Value $WANPrimaryGW -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name PWANNetmask -Value $PWANNetmask -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANPrimary -Value $WANPrimary -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SWANPrompt -Value $SWANPrompt -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name 2ndISPYes -Value $2ndISPYes -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name 2ndISPNo -Value $2ndISPNo -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SWANInfoTitle -Value $SWANInfoTitle -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondary -Value $WANSecondary -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SWANNetmask -Value $SWANNetmask -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondaryGW -Value $WANSecondaryGW -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SecondaryWANPort -Value $SecondaryWANPort -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name PrimaryWANPort -Value $PrimaryWANPort -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name Done -Value $Done -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name Cancel -Value $Cancel -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANPrimaryTextBox -Value $WANPrimaryTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name PWANNetmaskTextBox -Value $PWANNetmaskTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANPrimaryGWTextBox -Value $WANPrimaryGWTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANPrimaryCommentTextBox -Value $WANPrimaryCommentTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name PrimaryWANPortTextBox -Value $PrimaryWANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondaryTextBox -Value $WANSecondaryTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SWANNetmaskTextBox -Value $SWANNetmaskTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondaryGWTextBox -Value $WANSecondaryGWTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name WANSecondaryCommentTextBox -Value $WANSecondaryCommentTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name SecondaryWANPortTextBox -Value $SecondaryWANPortTextBox -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name ErrorsOutput_StatusStrip -Value $ErrorsOutput_StatusStrip -MemberType NoteProperty
Add-Member -InputObject $ConfigWANForm -Name ErrorStatus_Label -Value $ErrorStatus_Label -MemberType NoteProperty
}
. InitializeComponent
