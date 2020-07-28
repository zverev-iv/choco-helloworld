$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'helloworld*'
  unzipLocation = $toolsDir
  url           = $url
  checksum      = ''
  checksumType  = 'sha256'
  url64bit      = $url64
  checksum64    = ''
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
