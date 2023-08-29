Try {
  Add-Type -AssemblyName System.DirectoryServices.AccountManagement
  $PrincipalContext = New-Object System.DirectoryServices.AccountManagement.PrincipalContext([System.DirectoryServices.AccountManagement.ContextType]::Machine)
  $UserPrincipal = New-Object System.DirectoryServices.AccountManagement.UserPrincipal($PrincipalContext)
  $Searcher = New-Object System.DirectoryServices.AccountManagement.PrincipalSearcher
  $Searcher.QueryFilter = $UserPrincipal

  $adminaccount = $Searcher.FindAll() | Where-Object {$_.Sid -Like "*-500"}
  $guestaccount = $Searcher.FindAll() | Where-Object {$_.Sid -Like "*-501"}

  $adminaccountname = $adminaccount.SamAccountName
  $adminaccountsid = $adminaccount.Sid
  $adminaccountsstate = $adminaccount.Enabled

  $guestaccountname = $guestaccount.SamAccountName
  $guestaccountsid = $guestaccount.Sid
  $guestaccountstate = $guestaccount.Enabled

  Write-Host "'cnan_builtin_account_names': { 'Administrator': { 'name':'$adminaccountname', 'sid':'$adminaccountsid', 'state':'$adminaccountsstate' }, 'Guest': { 'name':'$guestaccountname', 'sid':'$guestaccountsid', 'state':'$guestaccountstate' } }"
}
Catch {}
