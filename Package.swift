// swift-tools-version:5.9
//
// RaIOSdk - Binary Distribution

import PackageDescription

let package = Package(
    name: "RaIOSdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "RaIOSdk",
            targets: ["RaIOSdk"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdk",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.3/RaIOSdk-0.0.3.xcframework.zip",
            checksum: "92575814db49fee3a6143d81ef7aae96f728f493746d83d38ae1eaba9dc32281"
        )
    ]
)
