$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.3/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.3/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'c75735cb17cc5cc869147513a424a9e9ec7296df'
  checksumType  = 'sha1'
  checksum64    = 'f7d2d0585143619e91cde3bc5cc87caa2c751c27'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
