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
      url: "https://download.sinch.com/ios/5.46.4/apple/dynamic/SinchRTC-iOS-5.46.4%2b41ea1c6a.zip",
      checksum: "dcf52b09ec43864e265985def99dc405efa80fc439f383760d3fa0a7b3773c6f"
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
