Function refreshenv() {
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
              ";" +
              [System.Environment]::GetEnvironmentVariable("Path","User")
}

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Function __GetAllChildItems() {
  Get-ChildItem -Force
}

Set-Alias -Name l -Value Get-ChildItem
Set-Alias -Name la -Value __GetAllChildItems

oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/pure.omp.json" | Invoke-Expression
Import-Module posh-git

$env:POSH_GIT_ENABLED = $true
