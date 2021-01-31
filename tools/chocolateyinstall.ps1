$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.7/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.7/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'afa9f642866a4cc83c4cb438b9d20994099670f8'
  checksumType  = 'sha1'
  checksum64    = '747c0f8565f0a92376e70acf529c7ed2b33a33cc'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
