// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "PocketSVG",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "PocketSVG",
            type: .dynamic,
            targets: ["PocketSVG"])
    ],
    targets: [
        .target(
            name: "PocketSVG",
            dependencies: [],
            path: "Sources",
            resources: [
                .process("Resources"),
            ]
        ),
        .testTarget(
            name: "PocketSVGTests",
            dependencies: ["PocketSVG"],
            path: "Tests",
            resources: [
                .process("Resources"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx14
)
