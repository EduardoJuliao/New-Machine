@{
    # Version number of this module.
    moduleVersion      = '14.2.1'

    # ID used to uniquely identify this module
    GUID               = '693ee082-ed36-45a7-b490-88b07c86b42f'

    # Author of this module
    Author             = 'DSC Community'

    # Company or vendor of this module
    CompanyName        = 'DSC Community'

    # Copyright statement for this module
    Copyright          = 'Copyright the DSC Community contributors. All rights reserved.'

    # Description of the functionality provided by this module
    Description        = 'Module with DSC resources for deployment and configuration of Microsoft SQL Server.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion  = '5.0'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion         = '4.0'

    # Functions to export from this module
    FunctionsToExport  = @()

    # Cmdlets to export from this module
    CmdletsToExport    = @()

    # Variables to export from this module
    VariablesToExport  = @()

    # Aliases to export from this module
    AliasesToExport    = @()

    DscResourcesToExport = @(
        'SqlAG'
        'SqlAGDatabase'
        'SqlAgentAlert'
        'SqlAgentFailsafe'
        'SqlAgentOperator'
        'SqlAGListener'
        'SqlAGReplica'
        'SqlAlias'
        'SqlAlwaysOnService'
        'SqlDatabase'
        'SqlDatabaseDefaultLocation'
        'SqlDatabaseOwner'
        'SqlDatabaseObjectPermission'
        'SqlDatabasePermission'
        'SqlDatabaseRecoveryModel'
        'SqlDatabaseRole'
        'SqlDatabaseUser'
        'SqlRS'
        'SqlRSSetup'
        'SqlScript'
        'SqlScriptQuery'
        'SqlConfiguration'
        'SqlDatabaseMail'
        'SqlEndpoint'
        'SqlEndpointPermission'
        'SqlServerEndpointState'
        'SqlLogin'
        'SqlMaxDop'
        'SqlMemory'
        'SqlServerNetwork'
        'SqlPermission'
        'SqlProtocol'
        'SqlProtocolTcpIp'
        'SqlReplication'
        'SqlRole'
        'SqlSecureConnection'
        'SqlServiceAccount'
        'SqlSetup'
        'SqlWaitForAG'
        'SqlWindowsFirewall'
    )

    RequiredAssemblies = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData        = @{

        PSData = @{
            # Set to a prerelease string value if the release should be a prerelease.
            Prerelease   = ''

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/dsccommunity/SqlServerDsc/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/dsccommunity/SqlServerDsc'

            # A URL to an icon representing this module.
            IconUri      = 'https://dsccommunity.org/images/DSC_Logo_300p.png'

            # ReleaseNotes of this module
            ReleaseNotes = '## [14.2.1] - 2020-08-14

### Changed

- SqlServerDsc
  - Document changes in the file `build.yml`.
  - The regular expression for `major-version-bump-message` in the file
    `GitVersion.yml` was changed to only raise major version when the
    commit message contain the phrase `breaking change`, or when it contain
    the word `breaking` or `major`.
- SqlSetup
  - Duplicate function Get-SqlMajorVersion was removed and instead the
    helper function `Get-FilePathMajorVersion` from the helper module
    SqlServerDsc.Common is used ([issue #1178](https://github.com/PowerShell/SqlServerDsc/issues/1178)).
- SqlWindowsFirewall
  - Duplicate function Get-SqlMajorVersion was removed and instead the
    helper function `Get-FilePathMajorVersion` from the helper module
    SqlServerDsc.Common is used ([issue #1178](https://github.com/PowerShell/SqlServerDsc/issues/1178)).
- SqlServerDsc.Common
  - Function `Get-FilePathMajorVersion` was added. The function `Get-SqlMajorVersion`
    from the resources _SqlSetup_ and _SqlWindowsFirewall_ was moved and
    renamed without any functional changes ([issue #1178](https://github.com/PowerShell/SqlServerDsc/issues/1178)).

### Fixed

- SqlServerDsc
  - Removed helper functions that was moved to the module _DscResource.Common_.
    DSC resources using those functions are using them from the module
    _DscResource.Common_.
- SqlDatabaseObjectPermission
  - Fixed method invocation failed because of missing `Where()` method ([issue #1600](https://github.com/PowerShell/SqlServerDsc/issues/1600)).
    - New integration tests to verify scenarios when passing a single permission.
  - To enforce a scenario where a permission must be changed from `''GrantWithGrant''`
    to `''Grant''` a new parameter **Force** was added ([issue #1602](https://github.com/dsccommunity/SqlServerDsc/issues/1602)).
    The parameter **Force** is used to enforce the desired state in those
    scenarios where revocations must be performed to enforce the desired
    state, even if that encompasses cascading revocations. If parameter
    **Force** is _not_ set to `$true` an exception is thrown in those
    scenarios where a revocation must be performed to enforce the desired
    state.
    - New integration tests to verify scenarios when current state for a
      permission is `''GrantWithGrant''` but desired state should be `''Grant''`.
- SqlSetup
  - The example `4-InstallNamedInstanceInFailoverClusterFirstNode.ps1` was
    updated to no longer reference the issue #405 and issue #444 in the
    comment-based help. The issues was fixed a while back and _SqlSetup_
    now supports the built-in parameter `PsDscRunAsCredential` ([issue #975](https://github.com/PowerShell/SqlServerDsc/issues/975)).

'

        } # End of PSData hashtable

    } # End of PrivateData hashtable
}



