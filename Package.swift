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
            from: "0.0.18"
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdkBinary",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.17/RaIOSdk-0.0.17.xcframework.zip",
            checksum: "6dbda64dd65934f910ba02a63a33f4f04fa1d995f27858fe52d873cd80244430"
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
