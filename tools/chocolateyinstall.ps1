$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.6.4/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.6.4/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '57fc3a8c5811b6ef62834ae308b1d31a784c6953'
  checksumType  = 'sha1'
  checksum64    = '978fa1b5f435823ab6577c6ff43c4e059ab5b170'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
