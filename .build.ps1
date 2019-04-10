Param (
    [Parameter(Position = 0)]
    $Tasks,

    [Parameter()]
    [string]
    $ProjectName = (Get-Content (Join-Path -Path (Get-Location) -ChildPath 'Manifest.json') -Raw | ConvertFrom-Json).ModuleInfo.Name,

    [Parameter()]
    $ProjectPath = (Join-Path (Get-Location) "src"),

    [Parameter()]
    [String]
    $BuildOutput = "BuildOutput",

    [Parameter()]
    [switch]
    $NoNuget,

    [Parameter()]
    [String[]]
    $GalleryRepository,

    [Parameter()]
    [Uri]
    $GalleryProxy,

    [Parameter()]
    [switch]
    $ResolveDependency
)

begin {
    if (![io.path]::IsPathRooted($BuildOutput)) {
        $BuildOutput = Join-Path -Path $PSScriptRoot -ChildPath $BuildOutput
    }

    function Resolve-Dependency {
        [CmdletBinding()]
        param()

        if ($NoNuget.IsPresent -and !(Get-PackageProvider -Name NuGet -ForceBootstrap)) {
            $providerBootstrapParams = @{
                Name           = 'nuget'
                force          = $true
                ForceBootstrap = $true
            }
            if ($PSBoundParameters.ContainsKey('Verbose')) { $providerBootstrapParams.add('Verbose', $Verbose) }
            if ($GalleryProxy) { $providerBootstrapParams.Add('Proxy', $GalleryProxy) }
            $null = Install-PackageProvider @providerBootstrapParams
            Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
        }

        if (!(Get-Module -Listavailable PSDepend)) {
            Write-Verbose "BootStrapping PSDepend"
            "Parameter $BuildOutput" | Write-Verbose
            $InstallPSDependParams = @{
                Name         = 'PSDepend'
                AllowClobber = $true
                Confirm      = $false
                Force        = $true
                Scope        = 'CurrentUser'
            }
            if ($PSBoundParameters.ContainsKey('verbose')) { $InstallPSDependParams.add('verbose', $verbose) }
            if ($GalleryRepository) { $InstallPSDependParams.Add('Repository', $GalleryRepository) }
            if ($GalleryProxy) { $InstallPSDependParams.Add('Proxy', $GalleryProxy) }
            if ($GalleryCredential) { $InstallPSDependParams.Add('ProxyCredential', $GalleryCredential) }
            Install-Module @InstallPSDependParams
        }

        $dependencyInputObject = Import-PowerShellDataFile (Join-Path $PSScriptRoot "PSDepend.build.psd1")

        if ($null -ne $env:SYSTEM_ACCESSTOKEN) {
            $dependencyInputObject.BR.Name = $dependencyInputObject.BR.Name.Replace("https://", "https://$env:BuildServiceAccountId:$env:SYSTEM_ACCESSTOKEN`@")
        }

        $PSDependParams = @{
            Force       = $true
            InputObject = $dependencyInputObject
            Install     = $true
            Target      = "$PSScriptRoot\Dependencies"
        }

        ##### HACK for psdepend #####
        $map = Join-Path (module psdepend -Listavailable).ModuleBase "psdependmap.psd1"
        $newmap = (Get-Content $map) -replace "Supports = 'windows'$", "Supports = 'windows', 'core'"
        Set-Content -path $map -Value $newmap -Force
        #############################

        $null = Invoke-PSDepend @PSDependParams
        Write-Verbose "Project Bootstrapped, returning to Invoke-Build"
    }

    if ($ResolveDependency) {
        Write-Host "Resolving Dependencies... [this can take a moment]"
        $params = @{ }
        if ($PSboundParameters.ContainsKey('Verbose')) {
            $params.Add('Verbose', $Verbose)
        }
        Resolve-Dependency @params
    }
}

process {
    if ($MyInvocation.ScriptName -notlike '*Invoke-Build.ps1') {
        $PSBoundParameters.Remove("ResolveDependency") | Out-Null
        Invoke-Build $Tasks $MyInvocation.MyCommand.Path @PSBoundParameters
        return
    }

    task ResolveDependencies {
        Write-Host "Resolving Dependencies... [this can take a moment]"
        $params = @{ }
        if ($PSboundParameters.ContainsKey('Verbose')) {
            $params.Add('Verbose', $Verbose)
        }
        Resolve-Dependency @params
    }

    $buildFiles = Get-Item $PSScriptRoot\.build\* -Include *.ps1
    foreach ($buildFile in $buildFiles) {
        "Importing file $($buildFile.BaseName)" | Write-Verbose
        . $buildFile.FullName
    }
}
