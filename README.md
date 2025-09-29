# In-app - Swift Package Manager
Swift Package Manager distribution for SinchRTC iOS SDK

[![Swift Package Manager](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![Platform](https://img.shields.io/badge/platform-iOS%2012%2B-blue.svg?style=flat)](https://developer.apple.com/ios/)

## Requirements

- iOS 12.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

### Swift Package Manager

1. In Xcode, go to **File** → **Add Package Dependencies**
2. Enter the repository URL:
   ```
   https://github.com/sinch/sinch-ios-sdk-spm
   ```
3. Select **Add Package**
4. Choose the **SinchRTC** library and click **Add Package**

### Manual Integration

1. Add this repository as a dependency in your `Package.swift`:
   ```swift
   dependencies: [
       .package(url: "https://github.com/sinch/sinch-ios-sdk-spm.git")
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

## Support

- **Getting Started Guide**: [https://developers.sinch.com/docs/in-app-calling/getting-started/](https://developers.sinch.com/docs/in-app-calling/getting-started/)
- **Reference Applications**: [https://github.com/sinch/rtc-reference-applications/tree/master/ios](https://github.com/sinch/rtc-reference-applications/tree/master/ios)
