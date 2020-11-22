$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'e286159bafda2b7d3e8d7e302e6482d2ed69c6f5'
  checksumType  = 'sha1'
  checksum64    = '7460fc5ef0844b571c9a4d3d03b4532e68cdf1fc'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
