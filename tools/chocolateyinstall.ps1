$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.2/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.2/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'ffacdcd72dc432f4b3cee40bbda6cee451d985a8'
  checksumType  = 'sha1'
  checksum64    = '23dfad638ddcdc3470bbbc4b6611d429c5782116'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
