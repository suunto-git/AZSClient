// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AZSClient",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "AZSClient", targets: ["AZSClient"])
    ],
    targets: [
        .target(
            name: "AZSClient",
            path: "Lib/Azure Storage Client Library/Azure Storage Client Library",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedLibrary("xml2")
            ]
        )
    ]
)
