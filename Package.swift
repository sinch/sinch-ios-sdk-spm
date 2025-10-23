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
      url: "https://download.sinch.com/ios/temp/apple/static/SinchRTC-iOS-5.35.54%2b69b22bc8.zip",
      checksum: "696f2b3bec45674c22c9bf9985d3d7723af6f79242abc4dd7a72ce304e98feb5"
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

// mirroring test
