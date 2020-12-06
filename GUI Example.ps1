Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='GUI for my Testing script'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true


$Label1 = New-Object System.Windows.Forms.Label
$Label1.Text = "Teams Fix Tool"
$Label1.Location  = New-Object System.Drawing.Point(20,20)
$Label1.AutoSize = $true
$main_form.Controls.Add($Label1)


$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "TEST1"
$Label2.Location  = New-Object System.Drawing.Point(20,50)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)


$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = ""
$Label3.Location  = New-Object System.Drawing.Point(110,70)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)


$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(400,20)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)


$Button.Add_Click(

{

$Label3.Text =  "Click Me"

}

)



$main_form.ShowDialog()