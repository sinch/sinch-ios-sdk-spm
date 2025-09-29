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
      url: "https://download.sinch.com/ios/temp/spm/SinchRTC-iOS-5.35.23%2b848c0d35.zip",
      checksum: "1806df5c4d6eeaad8e7f3c400819cd57bc28b20bf1ab7e751f5cc99490b38778"
    )
  ]
)

// test 5
