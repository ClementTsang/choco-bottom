$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'adcb52dadfd7edbd58d23988f938e436f87af855'
  checksumType  = 'sha1'
  checksum64    = 'bed2c813f2add3ad278e0c104c47d0bdaa1f9796'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
