# Contributing to GitHub Repository Manager

Thank you for your interest in contributing to GitHub Repository Manager! This document provides guidelines for contributing to the project.

## Getting Started

### Prerequisites
- Bash 4.0 or higher
- Git
- curl
- Basic understanding of GitHub API
- Familiarity with shell scripting

### Development Setup
1. Fork the repository
2. Clone your fork locally
3. Create a new branch for your feature
4. Make your changes
5. Test thoroughly
6. Submit a pull request

## Development Guidelines

### Code Style
- Use 2 spaces for indentation
- Follow bash best practices
- Include comprehensive error handling
- Add comments for complex logic
- Use meaningful function and variable names

### Function Naming Convention
- Use snake_case for function names
- Prefix utility functions with appropriate prefixes
- Example: `print_status()`, `cleanup_repository()`

### Error Handling
- Always include proper error checking
- Use the provided color functions for output
- Provide meaningful error messages
- Include recovery suggestions where applicable

### Security Considerations
- Never hardcode tokens or sensitive information
- Validate all user inputs
- Use secure communication methods
- Implement proper permission checks

## Testing

### Manual Testing
Before submitting changes:
1. Test all interactive menu options
2. Test command line arguments
3. Verify error handling with invalid inputs
4. Test with different GitHub configurations
5. Verify backup and restore functionality

### Test Scenarios
- Repository creation with various settings
- Branch protection with different levels
- Pull request operations
- GA cleanup with different repository types
- Backup and restore operations

## Submitting Changes

### Pull Request Process
1. Ensure your code follows the style guidelines
2. Add or update documentation as needed
3. Test your changes thoroughly
4. Update CHANGELOG.md with your changes
5. Submit a pull request with a clear description

### Pull Request Description
Include:
- Summary of changes
- Motivation for the changes
- Testing performed
- Any breaking changes
- Related issues (if applicable)

## Documentation

### Code Documentation
- Add comments for complex functions
- Include parameter descriptions
- Document return values and error conditions
- Provide usage examples

### README Updates
- Update feature lists for new functionality
- Add new command line options
- Include new configuration options
- Update examples as needed

## Bug Reports

### Before Reporting
- Check existing issues
- Try to reproduce the issue
- Test with the latest version

### Bug Report Information
Include:
- Operating system and version
- Bash version
- Steps to reproduce
- Expected behavior
- Actual behavior
- Error messages (if any)
- Relevant configuration

## Feature Requests

### Before Requesting
- Check existing issues and pull requests
- Consider if the feature fits the project scope
- Think about implementation complexity

### Feature Request Information
Include:
- Clear description of the feature
- Use case and motivation
- Proposed implementation approach
- Potential impact on existing functionality

## Release Process

### Version Numbering
Follow Semantic Versioning (semver.org):
- MAJOR: Breaking changes
- MINOR: New features (backward compatible)
- PATCH: Bug fixes (backward compatible)

### Release Checklist
- Update version in script
- Update CHANGELOG.md
- Test all functionality
- Update documentation
- Create release notes

## Community Guidelines

### Code of Conduct
- Be respectful and inclusive
- Provide constructive feedback
- Help others learn and grow
- Focus on the project goals

### Communication
- Use clear and concise language
- Provide context for discussions
- Be patient with responses
- Ask questions when unclear

## Getting Help

### Resources
- README.md for usage instructions
- CHANGELOG.md for version history
- GitHub Issues for questions and discussions
- Code comments for implementation details

### Contact
- Create GitHub issues for bugs and feature requests
- Use discussions for general questions
- Review existing documentation first

Thank you for contributing to GitHub Repository Manager!
