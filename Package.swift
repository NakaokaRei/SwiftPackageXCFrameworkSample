// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let zipUrl = ".zip"
let checksum = "22fe446fbd37021b758cb52167b9fe5a788c846121e9191e72c935fb2709d454"

let package = Package(
    name: "SwiftPackageXCFrameworkSample",
    products: [
        .library(
            name: "SwiftPackageXCFrameworkSample",
            targets: ["CxxLibSample"]
        ),
    ],
    targets: [
//        .binaryTarget(name: "CxxLibSample", path: "CxxLibSample.xcframework"),
        .binaryTarget(name: "CxxLibSample", url: zipUrl, checksum: checksum),
        .testTarget(
            name: "SwiftPackageXCFrameworkSampleTests",
            dependencies: ["CxxLibSample"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx20
)
