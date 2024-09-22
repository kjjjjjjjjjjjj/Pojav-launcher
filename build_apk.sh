#!/bin/bash

# Check if gradlew exists
if [ ! -f "./gradlew" ]; then
  echo "Gradle wrapper not found. Please ensure you're in the project root directory."
  exit 1
fi

# Gradle clean task
echo "Cleaning the project..."
./gradlew clean

# Build the APK in debug mode
echo "Building the APK..."
./gradlew :app_pojavlauncher:assembleDebug

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "APK successfully built."
  echo "Output APK located at: app_pojavlauncher/build/outputs/apk/debug/app_pojavlauncher-debug.apk"
else
  echo "Failed to build APK."
  exit 1
fi
