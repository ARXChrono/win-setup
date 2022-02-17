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

# Windows Settings
Write-Host "Power and Sleep adjusted to never"
Powercfg /Change -monitor-timeout-ac 0
Powercfg /Change -standby-timeout-ac 0

# Browsers
choco install -y googlechrome

# Utils
choco install -y nanazip.portable
choco install -y adobereader

# Runtimes
choco install -y silverlight
choco install -y adobeair
