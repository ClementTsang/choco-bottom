$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.4.3/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.4.3/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '9DE13AF94CEFC07D5328E428D4FFFAC060DD40A9'
  checksumType  = 'sha1'
  checksum64    = '5F3D2CAE8242EAED85E6113B254B8DE5FE514D6C'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
