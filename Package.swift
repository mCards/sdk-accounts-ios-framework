// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AccountsSDK",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AccountsSDK",
            targets: ["AccountsSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wantsa/sdk-model-ios", from: "0.0.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AccountsSDK",
            dependencies: [
                .product(name: "CoreSDK", package: "sdk-model-ios")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
