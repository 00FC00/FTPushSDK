// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FTPushSDK",
    products: [
        .library(
            name: "FTPushSDK",
            targets: ["FTPushSDK"]),
        .library(
            name: "XGExtension",
            targets: ["XGExtension"]),
    ],
    targets: [
        .target(
            name: "FTPushSDK",
            dependencies: [
                "XG_SDK_Cloud",
                "XGInAppMessage",
                "XGMTACloud",
            ],
            linkerSettings: [
                .linkedLibrary("UserNotification")
            ]),
        .binaryTarget(name: "XG_SDK_Cloud", path: "XCFrameworks/XG_SDK_Cloud.xcframework"),
        .binaryTarget(name: "XGInAppMessage", path: "XCFrameworks/XGInAppMessage.xcframework"),
        .binaryTarget(name: "XGMTACloud", path: "XCFrameworks/XGMTACloud.xcframework"),
        .binaryTarget(name: "XGExtension", path: "XCFrameworks/XGExtension.xcframework"),
    ]
)
