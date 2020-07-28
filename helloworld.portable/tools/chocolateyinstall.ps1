$ErrorActionPreference = 'Stop';

$meta = Get-Content -Path $env:ChocolateyPackageFolder\tools\meta.json | ConvertFrom-Json

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'helloworld*'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $meta.url64bit
  checksum64    = $meta.checksum64
  checksumType64= $meta.checksumType64
}

Install-ChocolateyZipPackage @packageArgs
