// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "Process", products: [
    .library(name: "Process", targets: ["Process"]),
], dependencies: [
    .package(url: "https://github.com/purpln/tinyfoundation.git", branch: "main"),
], targets: [
    .target(name: "Process", dependencies: [
        .product(name: "TinyFoundation", package: "tinyfoundation"),
    ], linkerSettings: [
        .linkedLibrary("android-spawn", .when(platforms: [.android])),
    ]),
])
