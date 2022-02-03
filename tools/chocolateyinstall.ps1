$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '4e577fa820e49ff6a35b55e0f8f9ff08eae6479c'
  checksumType  = 'sha1'
}
Install-ChocolateyZipPackage @packageArgs
