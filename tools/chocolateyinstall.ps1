$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '32cb392b23406a5fcfd2ae2bc9e16557b84b7742'
  checksumType  = 'sha1'
  checksum64    = '4e577fa820e49ff6a35b55e0f8f9ff08eae6479c'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
