# Setup

These scripts helps configure a new development environment.

## How to use

1. Download the files
2. Open a new instance of powershell in admin mode
3. navigate to the folder
4. run `.\Machines.ps1`.
5. Close powershell

This script will install required software and frameworks to start development.

The full list of what is supported is listed below.

### Optional use

For web developers, running `machines\WebApps.ps1` will create web applications described in `data\webapps.json`

⚠⚠ Objects with same name will break the flow 😊

## What it does

What the scripts does as current version

### Programs Installed

    ✅ Git
    ❌ Visual Studio 2019
    ✅ Visual Studio Code
    ✅ SSMS
    ✅ SQL Server
    ✅ Cmder
    ✅ Notepad++
    ✅ Sublime

### Frameworks installed

    ✅ Dotnet Core
    ❌ .NET Framework
    ✅ Nodejs
    ✅ Typescript
    ✅ Angular
    ✅ Vue
    ✅ Gulp

### Environment

    ✅ IIS
    ✅ Dev Certificate
    ✅ SQL Server Instance
    ✅ Git for Powershell

### Features

    ✅ Choose what to install
    ✅ Chocolatey support

## Roadmap

    ⌛ Run directly from web
    ⌛ Multiple Dotnet Frameworks
    ⌛ Gulp support for specific actions
    ⌛ Docker?

## Imporvements

For now, the scripts download the .ISO evertytime it's run,
this can be improved by having it downlaoded in a shared folder, copying and using this.
