$ErrorActionPreference = 'Stop';
$packageName = 'mysql-connector'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dev.mysql.com/get/Downloads/Connector-Net/mysql-connector-net-6.9.9.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  softwareName  = $packageName
  checksum      = 'c7e42dda591b1a0482f5af32da33e1a0'
  checksumType  = 'md5' 
  silentArgs = '/qn' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

