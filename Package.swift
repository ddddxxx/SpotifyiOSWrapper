// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SpotifyiOSWrapper",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "SpotifyiOSWrapper",
            targets: ["SpotifyiOSWrapper"]),
    ],
    targets: [
        .binaryTarget(
            name: "SpotifyiOS",
            path: "Sources/SpotifyiOS/SpotifyiOS.xcframework"),
        .target(
            name: "SpotifyiOSWrapper",
            dependencies: [.target(name: "SpotifyiOS", condition: .when(platforms: [.iOS]))]),
        .testTarget(
            name: "SpotifyiOSWrapperTests",
            dependencies: ["SpotifyiOSWrapper"])
    ]
)
