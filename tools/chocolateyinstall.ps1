$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.5.2/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.5.2/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '42993e38eb1ff3a8c9d250f27a4bce6c3e872286'
  checksumType  = 'sha1'
  checksum64    = '804f17bf10eaea00527a942bb5e319cf0019a185'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
