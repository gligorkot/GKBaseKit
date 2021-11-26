// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "GKBaseKit",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "GKBaseKit",
            targets: ["GKBaseKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattgallagher/CwlPreconditionTesting.git", from: Version("2.0.0"))
    ],
    targets: [
        .target(
            name: "GKBaseKit",
            dependencies: []),
        .testTarget(
            name: "GKBaseKitTests",
            dependencies: [
                "GKBaseKit",
                "CwlPreconditionTesting"
            ]),
    ],
    swiftLanguageVersions: [.v4]
)
