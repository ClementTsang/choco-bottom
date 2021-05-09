$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.0/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.0/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '6c645f3c03d9728949adb7d051513a679e88f310'
  checksumType  = 'sha1'
  checksum64    = '1b66f59cd2ff9809d8fbde5a964b3f9d2759da0e'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
