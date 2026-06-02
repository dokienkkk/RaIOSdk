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
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.1/RaIOSdk-0.0.1.xcframework.zip",
            checksum: "f7c79fdc50e1493de39c7d35f167131a28d58956a8734c7ae6f41cebafa65d5a"
        )
    ]
)
