$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'helloworld*'
  unzipLocation = $toolsDir
  url64bit      = 'https://github.com/zverev-iv/HelloWorld/releases/download/v0.0.1/HelloWorld.zip'
  checksum64    = 'a718a69dc633f1ed70d4d76c3020c1d3a127b136cae93fb2c778f3e496dee8c0'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
