$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.4.7/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.4.7/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'e15c13c92135a52b52d2eb792ed77fe599a30517'
  checksumType  = 'sha1'
  checksum64    = '8cb31a39254c251418fc09d4bcbd9b91ca7cadda'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
