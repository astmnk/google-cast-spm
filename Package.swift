// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "google-cast-spm",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "GoogleCastStatic",
            targets: ["GoogleCastStatic"]
        ),
        .library(
            name: "GoogleCastDynamic",
            targets: ["GoogleCastDynamic"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/astmnk/protobuf-spm.git", from: "3.13.0"),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCastStatic",
            url: "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.8.4_static.zip",
            checksum: "964a3b2103b68bfa9d62e1ce39fd591ebadd0093086c0c340efcede00d356804",
        ),
        .binaryTarget(
            name: "GoogleCastDynamicBinary",
            url: "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.8.4_dynamic.zip",
            checksum: "c9c3a794e8585198b59c6bb7da5418a3194ffa1ffa6f9a1cbdf4dc0ea26dc6cf",
        ),
        .target(
            name: "GoogleCastDynamic",
            dependencies: [
                "GoogleCastDynamicBinary",
                .product(name: "Protobuf", package: "protobuf-spm")
            ],
            path: "Sources/GoogleCastDynamic"
        ),
    ]
)
