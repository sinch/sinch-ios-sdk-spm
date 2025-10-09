# In-app - Swift Package Manager
Swift Package Manager distribution for SinchRTC iOS SDK

SDK version: v5.35.37

[![Language](https://img.shields.io/badge/language-Swift-orange?style=flat&logo=swift&logoColor=white)](https://swift.org)
[![Swift Package Manager](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![Platform](https://img.shields.io/badge/platform-iOS%2012%2B-blue.svg?style=flat)](https://developer.apple.com/ios/)

## Requirements

- iOS 12.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

### Swift Package Manager

This repository provides two branches so you can choose which binary variant to consume:

- `main` (default) or `dynamic`: uses the dynamic xcframework
- `static`: uses the static xcframework

### Xcode Integration

1. In Xcode, go to **File** → **Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/sinch/sinch-ios-sdk-spm
   ```
3. Select **Add Package**
4. Choose the **SinchRTC** library and click **Add Package**
5. In the package configuration view, set Dependency Rule to **Branch**, and type either `dynamic` (or `main`) or `static`

### Manual Integration

1. Add sinch-ios-sdk-spm repository as a dependency in your `Package.swift` (choose one):
   ```swift
   dependencies: [
       // Dynamic (same as main)
       .package(url: "https://github.com/sinch/sinch-ios-sdk-spm.git", branch: "dynamic"),
       
       // or Static
       //.package(url: "https://github.com/sinch/sinch-ios-sdk-spm.git", branch: "static"),
   ]
   ```

2. Add the library to your target:
   ```swift
   targets: [
       .target(
           name: "YourApp",
           dependencies: ["SinchRTC"]
       )
   ]
   ```

## Resources

- [Getting Started Guide](https://developers.sinch.com/docs/in-app-calling/getting-started/ios/create-app)
- [iOS Reference Application](https://github.com/sinch/rtc-reference-applications/tree/master/ios)
