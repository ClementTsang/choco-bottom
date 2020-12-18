$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.6/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.6/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = 'd6afba18435754ec46b4f031717ac1f7593b082d'
  checksumType  = 'sha1'
  checksum64    = 'd30a2fc28cc16616a7a4a5ccf58d9f494a65bf9f'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
