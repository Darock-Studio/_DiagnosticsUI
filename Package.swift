// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DiagnosticsUI",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "DiagnosticsUI", targets: ["DiagnosticsUI", "_DiagnosticsUIDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darock-Studio/RadarKitCore", branch: "main")
    ],
    targets: [
        .binaryTarget(name: "DiagnosticsUI", path: "DiagnosticsUI.xcframework"),
        .target(name: "_DiagnosticsUIDependenciesWrapper", dependencies: [
            "RadarKitCore"
        ])
    ]
)
