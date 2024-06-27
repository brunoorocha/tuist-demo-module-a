// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModuleAFramework",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ModuleAFramework",
            targets: ["ModuleAFramework"]
        ),
        .library(
            name: "ModuleAFrameworkInterface",
            targets: ["ModuleAFrameworkInterface"]
        )
    ],
    dependencies: [
        // .package(url: "/path/to/module/b", branch: "main")
    ],
    targets: [
        .target(
            name: "ModuleAFramework",
            dependencies: [
                "ModuleAFrameworkInterface",
                // .product(name: "ModuleB", package: "module-b")
            ],
            path: "Sources/Framework"
        ),
        .target(
            name: "ModuleAFrameworkInterface",
            dependencies: [
                // .product(name: "ModuleB", package: "module-b")
            ],
            path: "Sources/Interface"
        ),
        .target(
            name: "ModuleAFrameworkTesting",
            dependencies: [
                "ModuleAFrameworkInterface"
            ],
            path: "Sources/Testing"
        ),
        .testTarget(
            name: "ModuleAFrameworkTests",
            dependencies: [
                "ModuleAFramework",
                "ModuleAFrameworkTesting"
            ],
            path: "Sources/Tests"
        )
    ]
)
