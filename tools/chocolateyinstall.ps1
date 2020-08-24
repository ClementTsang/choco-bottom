$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.4.5-1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.4.5-1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '2799f1628af3108771081cacdf9ecb7d33b0637b'
  checksumType  = 'sha1'
  checksum64    = '725232176e3948c4b5ba4678187e4f4284f83dcd'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
