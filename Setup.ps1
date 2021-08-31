<#
  .Description
  Use this for initially bootstrapping everything together into a
  new Windows installation.
#>

# --- Global functions ---
Function refreshenv() {
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
              ";" +
              [System.Environment]::GetEnvironmentVariable("Path","User")
}

# install scoop
iwr -useb get.scoop.sh | iex
scoop bucket add extras
scoop install aria2 git sudo
sudo scoop install 7zip okular --global
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
scoop install posh-git

refreshenv

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show('Please set up git first, if you need to add the SSH key to Github, and then press "OK".', 'Reminder', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information)

# clone dotfiles repo
cd ~
git clone git@github.com:raphtlw/dotfiles-win.git dotfiles
cd dotfiles

# copy files from dotfiles
{
    function cp ($source, $destination) {
        Copy-Item -Path $source -Destination $destination
    }
    cp "WindowsPowershell\Microsoft.PowerShell_profile.ps1" "${env:USERPROFILE}\Documents\WindowsPowershell"
    cp "WindowsTerminal\settings.json" "${env:APPDATA}\..\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
    cp ".gitconfig" "${env:USERPROFILE}"
}
