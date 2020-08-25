$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.4.6/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.4.6/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '761140ec63084760e9606c19ee2f62ec5df0812d'
  checksumType  = 'sha1'
  checksum64    = '414b9f1cbd5e1bd76be75323097be55f402655bf'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
