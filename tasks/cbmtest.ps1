Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Connect-VIServer -Server dcctstvcenter -User xxx -Password xxx

#new-snapshot
$VMs = Get-Content C:\temp\getVms.txt
Get-VM$VMs | New-Snapshot -Name "MultpleSnapshot-1" -Description "TestSnapshot"

#remove-snapshot
$VMs = Get-Content C:\temp\getVms.txt
Get-VM $VMs | Get-Snapshot -Name MultpleSnapshot* | Remove-Snapshot -removechildren -confirm
