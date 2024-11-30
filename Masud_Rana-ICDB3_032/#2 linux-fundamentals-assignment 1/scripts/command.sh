#!/bin/bash

# ----------------------------------------------------------------------------
# Linux Fundamentals - Assignment 1
# ----------------------------------------------------------------------------
# **Note:** Instructions in assignment_instruction.txt
# This script contains the Linux fundamentals tasks that demonstrate
# file system navigation, file and directory operations, permissions,
# user management, links, and package installation.
#
# Each task is executed with appropriate commands and status printouts.
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# FILE SYSTEM NAVIGATION
# ----------------------------------------------------------------------------

# List the contents of the home directory
echo "Listing contents of the home directory..."
ls ~
echo "Listing complete."

# Change the current directory to /var/log and list its contents
echo "Changing directory to /var/log and listing contents..."
cd /var/log && ls
echo "Listing complete in /var/log."

# Find and display the path to the bash executable using the 'which' command
echo "Finding the path to the bash executable..."
which bash
echo "Path found."

# Find current shell
echo "Finding the current shell being used..."
echo $SHELL
echo "Shell displayed."

# ----------------------------------------------------------------------------
# FILE AND DIRECTORY OPERATIONS
# ----------------------------------------------------------------------------

# Create a directory named linux_fundamentals in your home directory
echo "Creating a directory named 'linux_fundamentals' in the home directory..."
mkdir ~/linux_fundamentals
echo "Directory created."

# Inside linux_fundamentals, create a subdirectory named scripts
echo "Creating a subdirectory 'scripts' inside linux_fundamentals..."
mkdir ~/linux_fundamentals/scripts
echo "Subdirectory 'scripts' created."

# Create an empty file named example.txt inside the linux_fundamentals directory
echo "Creating an empty file named 'example.txt' inside linux_fundamentals..."
touch ~/linux_fundamentals/example.txt
echo "File 'example.txt' created."

# Copy example.txt to the scripts directory
echo "Copying 'example.txt' to the 'scripts' directory..."
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/
echo "File copied."

# Move example.txt from linux_fundamentals to linux_fundamentals/backup
echo "Moving 'example.txt' from linux_fundamentals to linux_fundamentals/backup..."
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/
echo "File moved."

# ----------------------------------------------------------------------------
# PERMISSIONS
# ----------------------------------------------------------------------------

# Change the permissions of example.txt
echo "Changing the permissions of 'example.txt' to 644..."
chmod 644 ~/linux_fundamentals/backup/example.txt
echo "Permissions changed."

# Verify the permission changes
echo "Verifying the permission changes of 'example.txt'..."
ls -l ~/linux_fundamentals/backup/example.txt
echo "Permissions verified."

# ----------------------------------------------------------------------------
# FILE MODIFICATION
# ----------------------------------------------------------------------------

# Create a file named example.txt in the home directory
echo "Creating a file named 'example.txt' in the home directory..."
touch ~/example.txt
echo "File created."

# Change the owner of example.txt to user 'student'
echo "Changing the owner of 'example.txt' to user 'student'..."
sudo chown student ~/example.txt
echo "Owner changed."

# Change the group of example.txt to 'students'
echo "Changing the group of 'example.txt' to group 'students'..."
sudo chgrp students ~/example.txt
echo "Group changed."

# Verify the changes to ownership and group
echo "Verifying the changes to ownership and group for 'example.txt'..."
ls -l ~/example.txt
echo "Ownership and group verified."

# ----------------------------------------------------------------------------
# OWNERSHIP
# ----------------------------------------------------------------------------

# Create a directory named project in the home directory
echo "Creating a directory named 'project' in the home directory..."
mkdir ~/project
echo "Directory created."

# Create a file named report.txt inside the project directory
echo "Creating a file named 'report.txt' inside the 'project' directory..."
touch ~/project/report.txt
echo "File created."

# Set the permissions of report.txt to 644
echo "Setting the permissions of 'report.txt' to 644..."
chmod 644 ~/project/report.txt
echo "Permissions set."

# Set the permissions of the project directory to 755
echo "Setting the permissions of 'project' directory to 755..."
chmod 755 ~/project
echo "Permissions set."

# Verify the changes to project directory and report.txt file
echo "Verifying the permissions of 'project' directory and 'report.txt' file..."
ls -ld ~/project ~/project/report.txt
echo "Permissions verified."

# ----------------------------------------------------------------------------
# USER ADD/MODIFY
# ----------------------------------------------------------------------------

# Create a new user named developer
echo "Creating a new user 'developer'..."
sudo useradd -m -d /home/developer_home -s /bin/sh developer
echo "User 'developer' created."

# Verify the new user's information
echo "Verifying the user information for 'developer'..."
id developer
echo "User information verified."

# Change the username to devuser
echo "Changing the username of 'developer' to 'devuser'..."
sudo usermod -l devuser developer
echo "Username changed."

# Add devuser to a group named devgroup
echo "Adding 'devuser' to the group 'devgroup'..."
sudo usermod -aG devgroup devuser
echo "User added to group."

# Set the password of devuser to 'devpass'
echo "Setting the password of 'devuser' to 'devpass'..."
echo "devuser:devpass" | sudo chpasswd
echo "Password set."

# Verify changes
echo "Verifying changes to 'devuser'..."
id devuser
echo "Changes verified."

# ----------------------------------------------------------------------------
# HARD/SOFT LINK
# ----------------------------------------------------------------------------

# Create a file named original.txt in the home directory
echo "Creating a file named 'original.txt'..."
touch ~/original.txt
echo "File created."

# Create a symbolic link named softlink.txt
echo "Creating a symbolic link 'softlink.txt' pointing to 'original.txt'..."
ln -s ~/original.txt ~/softlink.txt
echo "Symbolic link created."

# Verify the symbolic link
echo "Verifying the symbolic link..."
ls -l ~/softlink.txt
echo "Symbolic link verified."

# Delete the original file and observe the status of the symbolic link
echo "Deleting 'original.txt' and checking the status of the symbolic link..."
rm ~/original.txt
ls -l ~/softlink.txt
echo "Original file deleted. Symbolic link status checked."

# Create a hard link named hardlink.txt
echo "Creating a hard link named 'hardlink.txt' pointing to 'datafile.txt'..."
ln ~/datafile.txt ~/hardlink.txt
echo "Hard link created."

# Verify the hard link
echo "Verifying the hard link..."
ls -i ~/datafile.txt ~/hardlink.txt
echo "Hard link verified."

# Delete the original file and observe the status of the hard link
echo "Deleting 'datafile.txt' and checking the status of the hard link..."
rm ~/datafile.txt
ls -l ~/hardlink.txt
echo "Original file deleted. Hard link status checked."

# ----------------------------------------------------------------------------
# PACKAGE INSTALLATION
# ----------------------------------------------------------------------------

# Update the repository cache
echo "Updating the repository cache..."
sudo apt update
echo "Repository cache updated."

# Install the tree package
echo "Installing the 'tree' package..."
sudo apt install tree
echo "'tree' package installed."

# Install gcloud CLI tool
echo "Installing gcloud CLI tool..."
sudo apt install apt-transport-https ca-certificates gnupg
echo "gcloud CLI tool installed."
