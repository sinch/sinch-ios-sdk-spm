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

## Setup

### Add via Xcode (recommended)
1. In Xcode, go to **File** → **Add Package Dependencies...**
2. Repository URL:
   ```
   https://github.com/sinch/sinch-ios-sdk-spm
   ```
3. Click **Add Package**.
4. In the configuration view, set Dependency Rule to **Branch** and choose one:
   - `dynamic` (or `main`): links a dynamic xcframework
   - `static`: links a static xcframework
5. Select product **SinchRTC** for your app target and finish.

**Notes:**
- For `dynamic`/`main`: in your app target → General → Frameworks, Libraries, and Embedded Content, set SinchRTC to **Embed & Sign**.
- For `static`: set SinchRTC to **Do Not Embed**. No extra system frameworks are required; the package auto‑links what it needs.

### Add via Package.swift (manual)
Choose one branch:
```swift
dependencies: [
    // Dynamic (same as main)
    .package(url: "https://github.com/sinch/sinch-ios-sdk-spm.git", branch: "dynamic"),
    // or Static
    //.package(url: "https://github.com/sinch/sinch-ios-sdk-spm.git", branch: "static"),
]
```
Then add the product to your target:
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
