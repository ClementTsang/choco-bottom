$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.2.1/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.2.1/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '6A2377896E3CDF488B316DCA0AA2239B42A4D370'
  checksumType  = 'sha1'
  checksum64    = 'E63272D55388480B08C56B7595429F1F6400532C'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
