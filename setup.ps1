# Install Chocolatey
Try
{
  choco --version
  $chocolateyInstalled=$True
}
catch
{
  $chocolateyInstalled=$False
}

if($chocolateyInstalled)
{
  Write-Host "Update Chocolatey"
  choco upgrade chocolatey
}
else
{
  Write-Host "Install Chocolatey"
  Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
