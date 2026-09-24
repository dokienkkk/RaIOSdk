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
            from: "0.0.31"
        )
    ],
    targets: [
        .binaryTarget(
            name: "RaIOSdkBinary",
            url: "https://github.com/dokienkkk/RaIOSdk/releases/download/0.0.25/RaIOSdk-0.0.25.xcframework.zip",
            checksum: "ea9e6312acf0eeb1e595144eb73ce95c1d4002838b067308c26f3c8bfe371657"
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
