#!/bin/bash
#
# Utility functions for GitHubRepoManager
#

# Function to get OS information
get_os_info() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID $VERSION_ID"
  else
    echo "unknown"
  fi
}
