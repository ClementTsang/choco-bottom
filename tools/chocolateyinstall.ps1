$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'b6506e615b5daaba6f79fec236231be85ef010fd'
  checksumType  = 'sha1'
  checksum64    = '62a6b7511de4b9a63d9ee6c97ed4c741f8cd1fb2'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
