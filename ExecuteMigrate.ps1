# Get the current directory
$baseDir = Get-Location

# Get all directories in the current directory
$dirs = Get-ChildItem -Directory

foreach ($dir in $dirs) {
    # Check if the directory is a Git repository
    if (Test-Path "$($dir.FullName)\.git") {
        Write-Host "Processing repository: $($dir.FullName)"
        
        # Change to the repository directory
        Set-Location $dir.FullName
        
        # Get the current remote URL
        $remoteUrl = git remote get-url origin
        
        # Check if the remote URL is using SSH
        if ($remoteUrl -match "^git@github\.com:(.*)$") {
            # Convert SSH URL to HTTPS URL
            $httpsUrl = "https://github.com/$($matches[1])"
            
            # Set the new remote URL
            git remote set-url origin $httpsUrl
            
            Write-Host "Updated remote URL to: $httpsUrl"
        } else {
            Write-Host "Remote URL is already using HTTPS: $remoteUrl"
        }
    } else {
        Write-Host "Skipping non-repository directory: $($dir.FullName)"
    }
}

# Change back to the original directory
Set-Location $baseDir