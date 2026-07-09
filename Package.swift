// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "SinchRTC",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "SinchRTC", targets: ["SinchRTC", "SinchRTCLinkedFrameworks"]) 
  ],
  targets: [
    .binaryTarget(
      name: "SinchRTC",
      url: "https://download.sinch.com/ios/5.41.6/apple/dynamic/SinchRTC-iOS-5.41.6%2b2016b16a.zip",
      checksum: "e56c57e8d9bc6b6d0e7a30d03296eb8ab7a8a755a6cedeb8f8e635cdc5ff1920"
    ),
    .target(
      name: "SinchRTCLinkedFrameworks",
      dependencies: ["SinchRTC"],
      linkerSettings: [
        .unsafeFlags(["-ObjC"], .when(platforms: [.iOS])),
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
