// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-escpos",
    platforms: [
        .macOS(.v12),
        .iOS(.v14)
    ],
    products: [
        .executable(
            name: "ESCPOS-Example",
            targets: ["ESCPOS-Example"]
        ),
        .library(
            name: "ESCPOS",
            targets: ["ESCPOS"]
        ),
        .library(
            name: "ESCPOSClient",
            targets: ["ESCPOSClient"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(name: "Cescpos", publicHeadersPath: "."),
        .target(
            name: "ESCPOS"
        ),
        .target(
            name: "ESCPOSClient",
            dependencies: [
                .byName(name: "Cescpos"),
                .byName(name: "ESCPOS"),
            ]
        ),
        .executableTarget(
            name: "ESCPOS-Example",
            dependencies: [
                .byName(name: "ESCPOSClient"),
            ]
        ),
        .testTarget(
            name: "ESCPOSTests",
            dependencies: ["ESCPOS"]
        ),
    ]
)
