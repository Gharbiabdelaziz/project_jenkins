#!/bin/bash

# Set the desired Gradle version
gradle_version="5.0"

# Download Gradle binary distribution
wget "https://services.gradle.org/distributions/gradle-${gradle_version}-bin.zip"

# Unzip the downloaded distribution
unzip "gradle-${gradle_version}-bin.zip"

# Move Gradle files to /opt directory
sudo mv "gradle-${gradle_version}" /opt/gradle

# Create the /etc/profile.d/gradle.sh file
sudo touch /etc/profile.d/gradle.sh

# Set up environment variables in the gradle.sh file
echo "export GRADLE_HOME=/opt/gradle" | sudo tee -a /etc/profile.d/gradle.sh
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" | sudo tee -a /etc/profile.d/gradle.sh

# Set the appropriate permissions for gradle.sh
sudo chmod 755 /etc/profile.d/gradle.sh

# Reload the environment variables
source /etc/profile.d/gradle.sh

# Verify Gradle installation
gradle -v

