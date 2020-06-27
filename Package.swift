// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM-Platform-Bug",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPM-Platform-Bug",
            targets: ["SPM-Platform-Bug"]),
    ],
    dependencies: [
        .package(name: "Lasso", url: "git@github.com:ww-tech/lasso.git", .exact("1.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPM-Platform-Bug",
            dependencies: [
                .byName(name: "iOS-ONLY", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources/SPM-Platform-Bug"
        ),
        
        .target(
            name: "iOS-ONLY",
            dependencies: [
                .byName(name: "Lasso")
            ],
            path: "Sources/iOS-ONLY"
        )
    ]
)
