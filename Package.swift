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
            from: "0.0.14"
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdkBinary",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.10/RaIOSdk-0.0.10.xcframework.zip",
            checksum: "da85aa29a737698eedd33f4439f690ba5d83bf7585cf52552eeaeb3c105b2e24"
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
