// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "LineNoise",
    platforms: [
        .macOS(.v26),
    ],
    products: [
        .library(
            name: "LineNoise",
            targets: ["LineNoise"]),
        .executable(
            name: "linenoiseDemo",
            targets: ["linenoiseDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", from: "14.0.0")
    ],
    targets: [
        .target(
            name: "LineNoise",
            dependencies: [],
            path: "Sources/LineNoise"),
        .executableTarget(
            name: "linenoiseDemo",
            dependencies: ["LineNoise"],
            path: "Sources/LineNoiseDemo"),
        .testTarget(
            name: "linenoiseTests",
            dependencies: ["LineNoise", "Nimble"],
            path: "Tests/LineNoiseTests"),
    ]
)
