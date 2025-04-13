// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "union-persistence",
    products: [
        .library(
            name: "UnionPersistence",
            targets: ["UnionPersistence"]
        ),
    ],
    targets: [
        .target(
            name: "UnionPersistence"
        ),
    ]
)
