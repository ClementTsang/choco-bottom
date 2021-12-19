$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.5/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.5/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '6d2016d74e70f27a9888ecb434f030a2e46e3b42'
  checksumType  = 'sha1'
  checksum64    = '2dd9749a561ea49825337d9c9a82496d3246326b'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
