// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SBPackages",
    platforms: [
        .iOS(.v15), .tvOS(.v15), .macOS(.v12), .watchOS(.v7),
    ],
    products: [
        .library(name: "SBAuthenticationServices", targets: ["SBAuthenticationServices"]),
        .library(name: "SBCombine", targets: ["SBCombine"]),
        .library(name: "SBContacts", targets: ["SBContacts"]),
        .library(name: "SBCoreLocation", targets: ["SBCoreLocation"]),
        .library(name: "SBCryptoKit", targets: ["SBCryptoKit"]),
        .library(name: "SBEventKit", targets: ["SBEventKit"]),
        .library(name: "SBFoundation", targets: ["SBFoundation"]),
        .library(name: "SBMapKit", targets: ["SBMapKit"]),
        .library(name: "SBPDFKit", targets: ["SBPDFKit"]),
        .library(name: "SBStandardLibrary", targets: ["SBStandardLibrary"]),
        .library(name: "SBStoreKit", targets: ["SBStoreKit"]),
        .library(name: "SBSwiftUI", targets: ["SBSwiftUI"]),
        .library(name: "SBUserNotifications", targets: ["SBUserNotifications"]),
        .library(name: "SBWebKit", targets: ["SBWebKit"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SBAuthenticationServices"),
        .target(name: "SBCombine"),
        .target(name: "SBContacts", dependencies: ["SBFoundation"]),
        .target(name: "SBCoreLocation", dependencies: ["SBStandardLibrary"]),
        .testTarget(name: "SBCoreLocationTests", dependencies: ["SBCoreLocation"]),
        .target(name: "SBCryptoKit"),
        .target(name: "SBEventKit"),
        .target(name: "SBFoundation", dependencies: ["SBStandardLibrary"]),
        .testTarget(name: "SBFoundationTests", dependencies: ["SBFoundation"]),
        .target(
            name: "SBMapKit",
            dependencies: [
                "SBCoreLocation",
                "SBStandardLibrary",
            ]
        ),
        .testTarget(name: "SBMapKitTests", dependencies: ["SBMapKit"]),
        .target(name: "SBPDFKit"),
        .target(name: "SBStandardLibrary"),
        .testTarget(name: "SBStandardLibraryTests", dependencies: ["SBStandardLibrary"]),
        .target(name: "SBStoreKit"),
        .target(name: "SBSwiftUI"),
        .target(name: "SBUserNotifications", dependencies: ["SBStandardLibrary"]),
        .target(name: "SBWebKit"),
    ]
)
