#Initializes Global Parameters
.\Global-Config

<#
Exposed parameters for creating the Reporting Role, so you can change it for production
#>
$Path = "$ConfigRoot\sitecore-XP1-rep.json"
$Package = "$($PackageRoot)_rep.scwdp.zip"
$SiteName = "$Prefix.reporting" #The website that will be created in IIS

$SSLCert = "" #Todo: needs to be provided (applicable for production environment), if not then generated by the script (applicable for development environment).

#Configure Reporting role
$ContentManagementParams = @{     
    Path = $Path
    Package = $Package     
    LicenseFile = $LicenseFile      
    SSLCert = $SSLCert
    SqlDbPrefix = $Prefix
    SiteName = $SiteName
    SqlCoreUser = $SqlCoreUser
    SqlCorePassword = $SqlCorePassword
    SqlMasterUser = $SqlMasterUser
    SqlMasterPassword = $SqlMasterPassword
    SqlWebUser = $SqlWebUser
    SqlWebPassword = $SqlWebPassword
    SqlReportingUser = $SqlReportingUser
    SqlReportingPassword = $SqlReportingPassword
    SqlServer = $SqlServer
    ReportingServiceApiKey = $ReportingServiceApiKey
} 
Write-Host @ContentManagementParams
Install-SitecoreConfiguration @ContentManagementParams

<#
MIT License

Copyright (c) 2018 Ramon Aseniero

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#> 