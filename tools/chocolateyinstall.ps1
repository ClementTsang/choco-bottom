$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.0/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.0/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '48a0af41dde77b080f95664f8e93daf6a3477c5e'
  checksumType  = 'sha1'
  checksum64    = '2a1898aa4ea60bd2b1a512db30462982c726568c'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
