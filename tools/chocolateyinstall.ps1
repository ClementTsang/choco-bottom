$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.5/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.5/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '7f6156dc7cd312f486bbee58f6a9779a609e37a1'
  checksumType  = 'sha1'
  checksum64    = '1da842436abdaec4deba625f55f5e73885e60986'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
