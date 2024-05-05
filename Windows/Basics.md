# Terminal
Here you can find the setup for a nice Terminal experience.

---

## Powershell 7 - [Docs](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#install-powershell-using-winget-recommended)
You might want to use the latest version of Powershell. You can install it by running the following command below.
```powershell
winget install --id Microsoft.Powershell --source winget
``` 
---

## Oh My Posh - [Docs](https://ohmyposh.dev/docs/installation/windows)
A prompt theme engine for any shell. Start by following the instructions from the documentation link above.

### Font
To install a font, run the following:
```powershell
oh-my-posh font install
```

Then select `CascadiaCode`. This will install a nerd font that contains icons witch oh-my-posh needs.

### Theme
The theme is specified in the powershell profile. Start by running:
```powershell
code $PROFILE
```

Then paste in the following line and replace `PATH_TO_THIS_REPO`:
```powershell
oh-my-posh init pwsh --config 'C:\{PATH_TO_THIS_REPO}\OhMyPosh\adam.omp.json' | Invoke-Expression
```

---

## Terminal icons - [Docs](https://github.com/devblackops/Terminal-Icons)
If you want icons when listing items in the terminal, like vscode, you can use Terminal-Icons. To install this module, run the following:
```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

Then edit you profile again by running:
```
code $PROFILE
```

And then paste in the following line:
```powershell
Import-Module -Name Terminal-Icons
```

---

## Autocomplete git - [Docs](https://github.com/dahlbyk/posh-git)
To get autocompleted git commands and branch names, install posh-git
```powershell
Install-Module posh-git -Scope CurrentUser -Force
```

Then edit you profile again by running:
```
code $PROFILE
```

And then paste in the following line:
```powershell
Import-Module posh-git
```

---

## History list - [Docs]()
If you want an autocomplete list when typing commands that is based on your history, install the following:
```powershell
Install-Module PSReadLine -AllowPrerelease -Force
```

Then edit you profile again by running:
```
code $PROFILE
```

And then paste in the following line:
```powershell
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
```