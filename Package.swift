// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "Process", products: [
    .library(name: "Process", targets: ["Process"]),
], dependencies: [
    .package(url: "https://github.com/purpln/libc.git", branch: "main"),
], targets: [
    .target(name: "Process", dependencies: [
        .product(name: "LibC", package: "libc"),
    ], linkerSettings: [
        .linkedLibrary("android-spawn", .when(platforms: [.android])),
    ]),
])
