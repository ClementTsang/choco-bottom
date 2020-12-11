$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.4/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.4/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '0c15bf239a869493620f9317e39c4f99ff2c6659'
  checksumType  = 'sha1'
  checksum64    = 'b665a27acdb6376d10f8d0a417a9409e32f68114'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
