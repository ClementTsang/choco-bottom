$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.3/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.3/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'd205cbd6783332a212c5ae92d73c77178c2d2f28'
  checksumType  = 'sha1'
  checksum64    = 'd205cbd6783332a212c5ae92d73c77178c2d2f28'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
