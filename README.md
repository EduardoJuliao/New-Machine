# Setup

These scripts helps configure a new development environment.

## How to use

1. Download the files
2. Open a new instance of powershell in admin mode
3. navigate to the folder
4. run `machines\WebDeveloper.programs.ps1`
5. run `machines\WebDeveloper.startup.ps1`

### Optional use

`lib\variables` can install multiple Customer Portals, just add a new object to the array.

⚠⚠ Objects with same name will break the flow 😊

## What it does

What the scripts does as current version

### Programs Installed

    ✅ Git
    ❌ Visual Studio 2019
    ❌ Visual Studio Code
    ❌ SSMS
    ❌ SQL Server
    ❌ Cmder
    ❌ Notepad++
    ❌ Sublime

### Frameworks installed

    ❌ Dotnet Core
    ❌ .NET Framework
    ❌ Nodejs

### Environment

    ✅ IIS
    ✅ Dev Certificate
    ❌ SQL Server Instance
    ❌ Git for Powershell

## Roadmap

    ⌛ Run directly from web
    ⌛ Choose what to install
    ⌛ Chocolatey support