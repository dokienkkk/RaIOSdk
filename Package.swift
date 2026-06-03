// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RaIOSdk",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "RaIOSdk", targets: ["RaIOSdkWrapper"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/RogoSolutions/IotCoreIOS-Binary.git",
            from: "0.0.8"
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdkBinary",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.3/RaIOSdk-0.0.3.xcframework.zip",
            checksum: "92575814db49fee3a6143d81ef7aae96f728f493746d83d38ae1eaba9dc32281"
        ),
        .target(
            name: "RaIOSdkWrapper",
            dependencies: [
                "RaIOSdkBinary",
                .product(name: "IotCoreIOS", package: "IotCoreIOS-Binary")
            ],
            path: "Sources/RaIOSdkWrapper"
        )
    ]
)
