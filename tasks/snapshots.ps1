#!/opt/microsoft/powershell/7/pwsh
$password    = $args[0]
$dateMonth   = Get-Date -Format "MMMM"
$serverArray = $args[1]

Connect-VIServer -Server "vspherehost" -Protocol https -User "vsphereuser" -Password $password

foreach ($server in $serverArray){
  $powerstate = (Get-VM -Name "$server" | Select-Object PowerState).PowerState
  Shutdown-VMGuest -VM $server -Confirm:$False
  if($?){
       echo "$server gracefully shutdown started"
    }
  else{
       Stop-VM -VM $server -Confirm:$False
       echo "$server poweroff started"

    }
  while ($powerstate -ne "PoweredOff") {
    echo $powerstate
    Start-Sleep -Seconds 3
    $powerstate = (Get-VM -Name "$server" | Select-Object PowerState).PowerState
  }
  if(New-Snapshot -VM $server -Name "before update $dateMonth" -Description "Testing this out" -Quiesce -Memory){
    echo "Snapshot created for $server"
    Start-VM -VM $server -Confirm:$False
  }
}
