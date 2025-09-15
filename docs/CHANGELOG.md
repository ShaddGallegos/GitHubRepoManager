# Changelog

All notable changes to GitHub Repository Manager will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [4.2.1] - 2025-09-05

### Enhanced
- Bulk clone functionality now creates organized directory structure
- Each user's repositories are cloned into a dedicated folder named after the GitHub user
- Updated directory structure: `target_directory/username/repository_name/`
- Improved clone summary and progress reporting to reflect organized structure
- Enhanced documentation with clear directory structure examples

### Fixed
- Clone target paths now consistently use user-organized directory structure
- Improved path handling for user directory creation and navigation

## [4.2.0] - 2025-09-05

### Added
- Bulk clone functionality to clone all repositories for a specific GitHub user
- Repository filtering options (skip forks, only forks, public/private only)
- Pagination support for users with many repositories
- HTTPS and SSH clone methods for bulk operations
- Full or shallow clone options for bulk cloning
- Existing repository handling (skip, overwrite, abort)
- Comprehensive progress reporting and error handling for bulk operations
- Bulk clone command line option (`--bulk-clone` or `-b`)

### Enhanced
- Interactive menu expanded to 11 options
- Help documentation updated with bulk clone feature descriptions
- Command line arguments include new bulk clone option
- Integration of CloneGitHubReposByUser.yml functionality into main script

## [4.1.0] - 2025-09-05

### Added
- Repository clone functionality with advanced options
- Multiple authentication methods for cloning (HTTPS, HTTPS with token, SSH)
- Branch selection and clone depth options (full, shallow, custom depth)
- Automatic post-clone repository information display
- Optional git user configuration for cloned repositories
- Additional remote setup capability after cloning
- Custom local directory naming and target directory selection
- Clone command line option (`--clone` or `-l`)

### Enhanced
- Interactive menu expanded to 10 options
- Help documentation updated with clone feature descriptions
- Command line arguments include new clone option

## [4.0.0] - 2025-09-05

### Added
- Repository GA cleanup functionality with automatic backup creation
- Comprehensive file cleanup (logs, temp files, cache directories, etc.)
- Multi-language syntax checking (Python, Shell, YAML, JSON)
- Large file detection and removal options
- Git history cleanup with fresh start option
- Repository optimization and compression
- Backup and restore system with timestamped archives
- Dynamic backup listing and restoration
- Integrity verification for backup operations

### Enhanced
- Interactive menu expanded to 9 options
- Command line arguments added for all new features
- Help documentation updated with comprehensive feature descriptions
- Error handling improved for backup operations

## [3.0.0] - 2025-09-05

### Added
- Pull request management functionality
- List open pull requests with detailed information
- Get comprehensive PR information (author, changes, status)
- Merge pull requests with multiple strategies (merge, squash, rebase)
- Close pull requests without merging
- Automatic branch cleanup after merging
- Conflict detection and warnings

### Enhanced
- Interactive menu expanded to include PR management
- Command line arguments for PR operations
- Help documentation updated

## [2.0.0] - 2025-09-05

### Added
- Branch protection functionality with multiple security levels
- Basic protection (require PR reviews)
- Advanced protection (dismiss stale reviews, require up-to-date branches)
- Maximum protection (admin enforcement, required status checks)
- Custom protection (user-configurable rules)
- GitHub API integration for protection rules

### Enhanced
- Interactive menu system improved
- Command line argument parsing expanded
- Error handling for API operations

## [1.0.0] - 2025-09-05

### Added
- Initial release with core functionality
- Repository creation on GitHub with local setup
- Repository deletion from GitHub and local filesystem
- Git issue resolution (ownership, tracking, conflicts)
- Auto-commit and push for multiple repositories
- GitHub.com and GitHub Enterprise support
- Comprehensive error handling and safety confirmations
- Token-based authentication
- Interactive menu system
- Command line interface

### Features
- Create new repositories with automatic local configuration
- Delete repositories safely with confirmations
- Fix common git issues automatically
- Batch operations for multiple repositories
- Support for custom GitHub domains
- Secure token handling
