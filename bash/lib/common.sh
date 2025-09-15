#!/bin/bash
#
# Common functions for GitHubRepoManager
#

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Function to check if a package is installed
package_installed() {
  rpm -q "$1" >/dev/null 2>&1
}
