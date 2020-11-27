$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.3/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.3/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'e52e15b3b354674fcf7e6c9dd518642ff671d1c9'
  checksumType  = 'sha1'
  checksum64    = 'a3d597d249ab51a0c64ef68549155a5e12cc8152'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
