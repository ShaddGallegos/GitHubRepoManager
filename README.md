# GitHub Repository Manager

A comprehensive command-line tool for managing GitHub repositories throughout their entire lifecycle. This tool provides everything you need to create, manage, protect, cleanup, and maintain GitHub repositories with enterprise-grade features.

## Overview

GitHub Repository Manager is a powerful bash script that automates common GitHub repository operations, from initial creation to production release preparation. It includes advanced features like branch protection, pull request management, repository cleanup for GA releases, and comprehensive backup/restore functionality.

## Features

### Core Repository Management

- **Repository Creation**: Create new GitHub repositories with automatic local setup
- **Repository Deletion**: Safely remove repositories from both GitHub and local filesystem
- **Repository Cloning**: Clone existing repositories with advanced options
  - Multiple authentication methods (HTTPS, HTTPS with token, SSH)
  - Branch selection and clone depth options (full, shallow, custom depth)
  - Automatic post-clone configuration and information display
  - Optional git user configuration for local repository
  - Additional remote setup capability
  - Custom local directory naming and target directory selection
- **Bulk Repository Cloning**: Clone all repositories for a specific GitHub user
  - Support for public and private repositories
  - Repository filtering options (skip forks, only forks, public/private only)
  - Pagination support for users with many repositories
  - HTTPS and SSH clone methods
  - Full or shallow clone options
  - Existing repository handling (skip, overwrite, abort)
  - Comprehensive progress reporting and error handling
- **Multi-platform Support**: Works with GitHub.com and GitHub Enterprise

### Git Operations & Troubleshooting
- **Git Issue Resolution**: Fix common git problems automatically
  - File ownership issues
  - Missing upstream tracking
  - Git configuration setup
  - Merge conflict resolution
  - Unrelated histories handling
- **Batch Operations**: Auto-commit and push multiple repositories
- **Repository Optimization**: Git garbage collection and optimization

### Security & Protection
- **Branch Protection**: Comprehensive branch protection rules
  - Basic protection (require PR reviews)
  - Advanced protection (dismiss stale reviews, require up-to-date branches)
  - Maximum protection (admin enforcement, required status checks)
  - Custom protection (configure your own rules)
- **Access Control**: Token-based authentication with proper scopes

### Pull Request Management
- **PR Listing**: View all open pull requests with detailed information
- **PR Details**: Get comprehensive information about specific pull requests
- **PR Merging**: Multiple merge strategies supported
  - Merge commit (preserves full branch history)
  - Squash and merge (combines all commits into one)
  - Rebase and merge (replays commits without merge commit)
- **PR Closing**: Close pull requests without merging
- **Branch Cleanup**: Automatic deletion of merged branches

### GA Release Preparation
- **Repository Cleanup**: Prepare repositories for General Availability
  - Remove unnecessary files (logs, temp files, cache directories)
  - Check syntax of Python, Shell, YAML, and JSON files
  - Detect and optionally remove large files
  - Clean git history (optional fresh start)
  - Create comprehensive .gitignore files
- **Repository Optimization**: Compress and optimize git repositories

### Backup & Recovery
- **Automatic Backups**: Create timestamped backups before major operations
- **Backup Management**: List and manage repository backups
- **Repository Restoration**: Restore repositories from backups with timestamps
- **Integrity Verification**: Validate backup integrity before restoration

## Installation

### Prerequisites
- **bash**: Version 4.0 or higher
- **curl**: For GitHub API operations
- **git**: For repository operations
- **tar**: For backup operations
- **python3**: For syntax checking (optional but recommended)
- **yamllint**: For YAML syntax checking (optional)
- **jq**: For better JSON formatting (optional but recommended)

### Setup
1. Clone or download the script to your desired location
2. Make the script executable:
   ```bash
   chmod +x GitHubRepoManager.sh
   ```
3. Optionally, add the script to your PATH for global access

### GitHub Token Setup
You'll need a GitHub Personal Access Token with appropriate scopes:

- **For repository creation**: `repo` scope
- **For repository deletion**: `delete_repo` scope
- **For branch protection**: `repo` scope with admin permissions
- **For pull request management**: `repo` scope

Create your token at: https://github.com/settings/tokens

## Usage

### Interactive Mode (Recommended)
Run the script without arguments to access the interactive menu:
```bash
./GitHubRepoManager.sh
```

### Command Line Options
```bash
./GitHubRepoManager.sh [OPTION]

Options:
  -h, --help        Show help message and exit
  -c, --create      Create new repository
  -d, --delete      Delete repository
  -l, --clone       Clone existing repository
  -b, --bulk-clone  Bulk clone all user repositories (organized by username)
  -f, --fix         Fix git repository issues
  -a, --auto-commit Auto-commit multiple repositories
  -p, --protect     Set up branch protection
  -m, --manage-pr   Manage pull requests
  -g, --ga-cleanup  Cleanup repository for GA release
  -r, --restore     Restore repository from backup
```

### Examples
```bash
# Show interactive menu
./GitHubRepoManager.sh

# Create a new repository
./GitHubRepoManager.sh --create

# Clone an existing repository
./GitHubRepoManager.sh --clone

# Bulk clone all repositories for a user
./GitHubRepoManager.sh --bulk-clone

# Fix git issues in current directory
./GitHubRepoManager.sh --fix

# Set up branch protection
./GitHubRepoManager.sh --protect

# Manage pull requests
./GitHubRepoManager.sh --manage-pr

# Cleanup repository for GA release
./GitHubRepoManager.sh --ga-cleanup

# Restore from backup
./GitHubRepoManager.sh --restore
```

## Detailed Feature Documentation

### Repository Creation
Creates a new GitHub repository and sets up the local environment:
- Creates repository on GitHub with specified settings
- Initializes local git repository
- Sets up remote origin
- Creates initial commit
- Configures upstream tracking

### Branch Protection
Implements GitHub branch protection rules:
- **Basic**: Require pull request reviews before merging
- **Advanced**: Dismiss stale reviews, require up-to-date branches
- **Maximum**: Admin enforcement, required status checks
- **Custom**: Configure specific protection rules

### Pull Request Management
Complete pull request workflow management:
- List all open pull requests with metadata
- View detailed PR information (commits, changes, conflicts)
- Merge with different strategies based on workflow needs
- Close PRs with optional reasons
- Automatic branch cleanup after successful merges

### Bulk Clone Operations

Comprehensive bulk repository cloning with advanced features:

- **User Organization**: Creates a dedicated folder named after the GitHub user
- **Filtering Options**: All repositories, skip/only forks, public/private only
- **Pagination Support**: Automatically handles users with large numbers of repositories
- **Authentication**: Supports both public and private repository access
- **Clone Methods**: HTTPS or SSH cloning with full or shallow clone options
- **Conflict Resolution**: Skip, overwrite, or abort when repositories already exist
- **Progress Tracking**: Real-time status updates with success/failure/skip counts
- **Enterprise Support**: Works with GitHub.com and GitHub Enterprise instances

Directory structure after bulk clone:

```text
target_directory/
└── username/
    ├── repository1/
    ├── repository2/
    └── repository3/
```

### GA Cleanup Process

Comprehensive repository preparation for public release:

1. **Backup Creation**: Automatic timestamped backup in ~/backup/
2. **File Cleanup**: Remove development artifacts and temporary files
3. **Syntax Validation**: Check Python, Shell, YAML, and JSON files
4. **Large File Detection**: Identify and optionally remove large files
5. **Git History**: Option to clean commit history for fresh start
6. **Optimization**: Repository compression and optimization
7. **Documentation**: Create/update .gitignore with best practices

### Backup System
Robust backup and restore functionality:
- **Automatic Backups**: Created before destructive operations
- **Naming Convention**: `{repo_name}_backup_{YYYYMMDD_HHMMSS}.tar.gz`
- **Storage Location**: `~/backup/` directory
- **Restoration**: Timestamped directory restoration
- **Verification**: Integrity checks before final placement

## Configuration

### Environment Variables
Set these environment variables for default behavior:
```bash
export GITHUB_TOKEN="your_github_token"
export GITHUB_USER="your_username"
export GITHUB_URL="github.com"  # or your enterprise GitHub URL
```

### Git Configuration
The script will automatically configure git if not already set up:
- User name and email
- Default branch settings
- Remote tracking configuration

## Error Handling

The script includes comprehensive error handling:
- **Pre-flight Checks**: Validates prerequisites before operations
- **API Error Handling**: Proper GitHub API error responses
- **Git Error Recovery**: Automatic resolution of common git issues
- **Rollback Capability**: Restore from backups if operations fail
- **Safety Confirmations**: Multiple confirmation prompts for destructive operations

## Security Considerations

- **Token Security**: Tokens are never stored permanently
- **Secure Communication**: All GitHub API calls use HTTPS
- **Permission Validation**: Checks token permissions before operations
- **Backup Integrity**: Verifies backup completeness before cleanup operations
- **Access Control**: Respects GitHub repository permissions

## Troubleshooting

### Common Issues
1. **Permission Denied**: Ensure your GitHub token has the required scopes
2. **Git Configuration**: Run `--fix` option to resolve git setup issues
3. **Network Issues**: Check internet connectivity and GitHub status
4. **Large Files**: Use GA cleanup to identify and remove large files

### Debug Mode
Add debug output by setting:
```bash
export DEBUG=1
./GitHubRepoManager.sh
```

## File Structure
```
GitHubRepoManager/
├── GitHubRepoManager.sh    # Main script
├── README.md               # This documentation
└── LICENSE                 # License file (if applicable)
```

## Backup Directory Structure
```
~/backup/
├── project1_backup_20250905_143022.tar.gz
├── project2_backup_20250905_151530.tar.gz
└── ...
```

## Contributing

To contribute to this project:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Version History

- **v1.0**: Initial repository creation and deletion functionality
- **v2.0**: Added git issue resolution and auto-commit features
- **v3.0**: Implemented branch protection and pull request management
- **v4.0**: Added GA cleanup and backup/restore functionality

## License

This project is provided as-is for educational and professional use. Please review and comply with your organization's policies regarding script usage and GitHub API access.

## Support

For issues, questions, or contributions:
- Review the troubleshooting section
- Check existing issues and documentation
- Create detailed bug reports with error messages and environment information

---

**Note**: This tool is designed for professional development environments. Always test in a non-production environment before using with critical repositories.
