$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.0/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.0/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '968dbacaf966e085f694fdd0ce16eb38e0890f40'
  checksumType  = 'sha1'
  checksum64    = 'bda8014a229b41b5ae444faf326f4bf11c3b895e'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
