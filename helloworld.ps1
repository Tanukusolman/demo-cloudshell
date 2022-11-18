function DownloadGitHubRepository 
{ 
    param( 
       [Parameter(Mandatory=$True)] 
       [string] $demo-cloudshell, 
         
       [Parameter(Mandatory=$True)] 
       [string] $Tanukusolman, 
         
       [Parameter(Mandatory=$False)] 
       [string] $Branch = "master", 
       ) 
     
    $ZipFile = "$location\$demo-cloudshell.zip"
    New-Item $ZipFile -ItemType File -Force
 
    $RepositoryZipUrl = "https://github.com/Tanukusolman/demo-cloudshell.git/$master" 

    Write-Host 'Starting downloading the GitHub Repository'
    Invoke-RestMethod -Uri $RepositoryZipUrl -OutFile $ZipFile
    Write-Host 'Download finished'
 
    Write-Host 'Starting unzipping the GitHub Repository locally'
    Expand-Archive -Path $ZipFile -DestinationPath $location -Force
    Write-Host 'Unzip finished'
     
    Remove-Item -Path $ZipFile -Force
}


