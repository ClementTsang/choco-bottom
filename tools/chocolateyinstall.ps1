$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.4.1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.4.1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'AE564800E6D3411656F4F081CF355C24B7BCCE51'
  checksumType  = 'sha1'
  checksum64    = 'C76DD9C52BDFACBACB7DD4FEFAAF0FF83E1790D9'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
