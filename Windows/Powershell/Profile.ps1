# Enables autocomplete for git commands
# https://github.com/dahlbyk/posh-git?tab=readme-ov-file#using-posh-git
Import-Module posh-git

# Enables oh my posh, a theme for powershell
oh-my-posh init pwsh --config 'C:\PATH_TO_YOUR_THEME\NAME_OF_THEME.omp.json' | Invoke-Expression

# Makes folder /files have icons, makes it easier to find files / folder when running "ls" command 
Import-Module -Name Terminal-Icons

# Makes so that the history is presented by a list below the written command
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
    dotnet complete --position $cursorPosition "$commandAst" | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}

<#
.SYNOPSIS
Copy the current path to the clipboard

.DESCRIPTION
A shortcut command for getting the current path of the current folder and putting it to the clipboard

.EXAMPLE
cc
#>
function CC {
    (Get-Location).Path | clip
}