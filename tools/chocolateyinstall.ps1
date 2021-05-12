$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '965919C85917D5463EA9FC39C468636FA0E8F371'
  checksumType  = 'sha1'
  checksum64    = 'd279620495aef425e0376db52b02dbb2fcd16613'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
