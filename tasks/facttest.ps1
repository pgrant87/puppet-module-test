#!powershell.exe

$stderrfile = New-TemporaryFile
$stdoutfile = New-TemporaryFile

& 'C:\Program Files\Puppet Labs\Puppet\bin\facter.bat' --custom-dir c:\programdata\puppetlabs\puppet\cache\lib\facter  --external-dir c:\programdata\puppetlabs\puppet\cache\facts.d kernel 2> $stderrfile 1> $stdoutfile
$factexit = $LASTEXITCODE

$stderr = get-content $stderrfile -raw
$stdout = get-content $stdoutfile -raw

if (!$factexit) {
    write-output "puppet facts failed"
    write-output "$stderr"
    exit 1
}

$stderrlength = $stderr.length

if ($stderrlength -gt 0) {
    write-output "puppet facts produced errors ($stderrlength)"
    write-output "$stderr"
    exit 1
}

write-output "script ends"
