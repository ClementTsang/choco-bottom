$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.2.2/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.2.2/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'CADCA981FB45D23E0B03C214E2443D853F7E5B7E'
  checksumType  = 'sha1'
  checksum64    = '5DBBF590660633549FDC655554FDD32C3C8BF937'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
