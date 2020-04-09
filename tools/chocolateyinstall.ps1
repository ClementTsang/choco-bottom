$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ClementTsang/bottom/releases/download/0.3.0/bottom_i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/ClementTsang/bottom/releases/download/0.3.0/bottom_x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'bottom'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '53E3BBF0F50643B5B798769CB59291FA090A6704'
  checksumType  = 'sha1'
  checksum64    = '295F906814BA90A62FC40F5024B05E113863D2FB'
  checksumType64= 'sha1'

}
Install-ChocolateyZipPackage @packageArgs
