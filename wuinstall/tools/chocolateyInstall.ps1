$url='http://blog.kireev.co/wp-content/uploads/wuinstall_trial.zip'
$packageName = 'wuinstall'
Install-ChocolateyZipPackage $packageName $url "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"