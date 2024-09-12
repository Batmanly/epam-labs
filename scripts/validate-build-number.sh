#!/bin/bash

# Get current build ID and date
rev=$1 #

# Construct new build number
newBuildNumber="Infra-CI-CD-$(date +'%Y.%m.%d').$rev"

# Update the build number
echo "##vso[build.updatebuildnumber]$newBuildNumber"

# Set variable for the old build number
echo "##vso[task.setvariable variable=oldBuildNumber]$2" # $(Build.BuildNumber)