# ssh-to-https-migration
Powershell script to migrate your Github cli authentication from SSH to Https


# Steps to Use ExecuteMigrate.ps1

Follow these steps to use the `ExecuteMigrate.ps1` script to update Git remote URLs from SSH to HTTPS:

## Prerequisites

- Ensure you have PowerShell installed on your system.
- Ensure Git is installed and accessible from the command line.

## Steps

1. **Open PowerShell**:
    - On Windows, you can search for "PowerShell" in the Start menu and open it.
    - On macOS, you can open the Terminal and type `pwsh` if you have PowerShell Core installed.

2. **Navigate to the Directory Containing the Script**:
    - Use the `cd` command to change to the directory where `ExecuteMigrate.ps1` is located. For example:
      ```powershell
      cd path\to\your\script\directory
      ```

3. **Run the Script**:
    - Execute the script by running the following command:
      ```powershell
      .\ExecuteMigrate.ps1
      ```

4. **Observe the Output**:
    - The script will process each directory in the current location, check if it is a Git repository, and update the remote URL from SSH to HTTPS if necessary.
    - Example output:
      ```
      Processing repository: C:\path\to\repo1
      Updated remote URL to: https://github.com/user/repo1
      Processing repository: C:\path\to\repo2
      Remote URL is already using HTTPS: https://github.com/user/repo2
      Skipping non-repository directory: C:\path\to\non-repo
      ```

## Notes

- Ensure you have the necessary permissions to change the remote URLs of the repositories.
- This script assumes that all repositories use `origin` as the remote name.

## License

This project is licensed under the MIT License.