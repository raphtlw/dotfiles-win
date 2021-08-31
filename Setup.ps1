<#
  .Description
  Use this for initially bootstrapping everything together into a
  new Windows installation.
#>

# install scoop
iwr -useb get.scoop.sh | iex
scoop bucket add extras
scoop install aria2 git sudo
sudo scoop install 7zip okular --global
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

# copy files from dotfiles
function cp ($source, $destination) {
    Copy-Item -Path $source -Destination $destination
}
{
    cp "WindowsPowershell\Microsoft.PowerShell_profile.ps1" "${env:USERPROFILE}\Documents\WindowsPowershell"
    cp "WindowsTerminal\settings.json" "${env:APPDATA}\..\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
}
