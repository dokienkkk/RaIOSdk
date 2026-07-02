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
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.7/RaIOSdk-0.0.7.xcframework.zip",
            checksum: "0fc44ce721acc07a675b30ee771dc024680b8b97b524d6c6e224cbf42fa13be3"
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
