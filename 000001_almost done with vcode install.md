
I'm a designer starting to learn how to code in this scippt supposedly have 58 ideas plugins and configurations to make sure that it would look really cool. script is not currently working and i need you to fix it.important things to me are AI integration to help me code, the beauty of the interface that should look really nice and rich.
this scripts managed to install it -vs code  - but it didn't install the rest of it - when i started it - vscode - said i was running as an administrator - and i felt that that could be a blocker  -   # Run this script in PowerShell as Administrator
#Requires -RunAsAdministrator

# Enable strict error checking
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Configuration
$installerUrl = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"
$installerPath = "$env:TEMP\VSCodeSetup.exe"
$potentialInstallPaths = @(
    "$env:ProgramFiles\Microsoft VS Code",  # System-wide install
    "$env:LOCALAPPDATA\Programs\Microsoft VS Code"  # User-level install
)

# Enhanced error handler
function Handle-Error {
    param ([string]$message)
    Write-Host "ERROR: $message" -ForegroundColor Red
    exit 1
}

# Installation validation function
function Test-VSCodeInstallation {
    foreach ($path in $potentialInstallPaths) {
        $exePath = Join-Path $path "Code.exe"
        if (Test-Path $exePath) {
            return $exePath
        }
    }
    return $null
}

# Main installation flow
try {
    # Download installer
    Write-Host "Fetching latest VS Code version..."
    Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

    # Install VS Code
    Write-Host "Installing VS Code (this may take several minutes)..."
    $installProcess = Start-Process $installerPath -ArgumentList "/silent /mergetasks=!runcode" -PassThru -Wait
    
    # Validate installer exit code
    if ($installProcess.ExitCode -ne 0) {
        Handle-Error "Installer failed with exit code $($installProcess.ExitCode)"
    }

    # Wait for installation to complete
    Write-Host "Verifying installation..."
    $retryCount = 0
    $maxRetries = 10
    do {
        $codeExePath = Test-VSCodeInstallation
        if (-not $codeExePath) {
            Start-Sleep -Seconds 10
            $retryCount++
        }
    } while (-not $codeExePath -and $retryCount -lt $maxRetries)

    if (-not $codeExePath) {
        Handle-Error "VS Code installation not detected after $($maxRetries * 10) seconds"
    }

    # Initialize VS Code
    Write-Host "Initializing VS Code..."
    Start-Process $codeExePath
    Start-Sleep -Seconds 15  # Allow full initialization

    # Install extensions
    $extensions = @(
        # ... (keep your extension list here) ...
    )

    Write-Host "Installing ${extensions.Count} extensions..."
    foreach ($extension in $extensions) {
        try {
            & $codeExePath --install-extensio|Wn $extension --force
        } catch {
            Write-Host "Extension install warning: $_" -ForegroundColor Yellow
        }
    }

    # Apply settings
    Write-Host "Configuring preferences..."
    $settingsPath = "$env:APPDATA\Code\User\settings.json"
    if (-not (Test-Path "$PSScriptRoot\settings.json")) {
        Handle-Error "Missing settings.json file in script directory"
    }
    
    Copy-Item -Path "$PSScriptRoot\settings.json" -Destination $settingsPath -Force
}
catch {
    Handle-Error "Script failed: $_"
}

Write-Host -ForegroundColor Green "SUCCESS: Enterprise-grade VS Code environment ready!"    ///////////////////////    {
    "workbench.colorTheme": "Catppuccin Macchiato",
    "editor.fontFamily": "'Fira Code', 'Courier New', monospace",
    "editor.fontSize": 14,
    "editor.cursorStyle": "block",
    "editor.cursorBlinking": "smooth",
    "editor.wordWrap": "on",
    "editor.tabSize": 4,
    "git.enableSmartCommit": true,
    "git.confirmSync": false,
    "git.autofetch": true,
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "breadcrumbs.enabled": true,
    "editor.minimap.enabled": true,
    "terminal.integrated.defaultProfile.windows": "PowerShell",
    "copilot.panel.enabled": true,
    "copilot.experimental.chat.enabled": true,
    "intelliCode.enabled": true,
    "rest-client.enableTelemetry": false,
    "prisma.enableTelemetry": false,
    "graphql.enableTelemetry": false
}  
