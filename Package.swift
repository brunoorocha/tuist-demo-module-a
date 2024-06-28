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
         .package(url: "git@github.com:brunoorocha/tuist-demo-module-b.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ModuleAFramework",
            dependencies: [
                "ModuleAFrameworkInterface",
                 .product(name: "ModuleBFramework", package: "tuist-demo-module-b")
            ],
            path: "Sources/Framework"
        ),
        .target(
            name: "ModuleAFrameworkInterface",
            dependencies: [
                 .product(name: "ModuleBFramework", package: "tuist-demo-module-b")
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
