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
      url: "https://download.sinch.com/ios/5.38.7/apple/dynamic/SinchRTC-iOS-5.38.7%2ba37f28ca.zip",
      checksum: "7600c2261eb738de5dde3000b8fc9b20bf08edff4985f3ec5bb921f48632bea7"
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
