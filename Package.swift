// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "SinchRTC",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "SinchRTC", targets: ["SinchRTC"])
  ],
  targets: [
    .binaryTarget(
      name: "SinchRTC",
      url: "https://download.sinch.com/ios/temp/spm/SinchRTC-iOS-5.35.28%2b5d41ee65.zip",
      checksum: "4fc2382778a74db3a4352d1ee7ebdb2a62b33ec1e1c6b81fe484c151065b4b9f"
    )
  ]
)

// test 6
