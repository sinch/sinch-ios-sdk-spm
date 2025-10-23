// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "SinchRTC",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "SinchRTC", targets: ["SinchRTC", "SinchRTCLinkedFrameworks"]) 
  ],
  targets: [
    .binaryTarget(
      name: "SinchRTC",
      url: "https://download.sinch.com/ios/temp/apple/dynamic/SinchRTC-iOS-5.35.54%2b69b22bc8.zip",
      checksum: "8820fc8fbeaee8abfe7f2eb851923cd45f9ad91c09eed07f770e544d40dc27e0"
    ),
    .target(
      name: "SinchRTCLinkedFrameworks",
      dependencies: ["SinchRTC"],
      linkerSettings: [
        .linkedFramework("PushKit"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("VideoToolbox"),
        .linkedFramework("AudioToolbox"),
        .linkedFramework("AVFoundation"),
        .linkedFramework("CoreMedia"),
        .linkedFramework("CoreVideo"),
        .linkedLibrary("z")
      ]
    )
  ]
)

// mirroring test
