// swift-tools-version:5.9
//
// RaIOSdk - Binary Distribution

import PackageDescription

let package = Package(
    name: "RaIOSdkKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "RaIOSdkKit",
            targets: ["RaIOSdkKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdkKit",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.2/RaIOSdkKit-0.0.2.xcframework.zip",
            checksum: "2570225612b106ac7edf43c6917f01e66535ea3f2c518ca83ec0134e298b4dc7"
        )
    ]
)
