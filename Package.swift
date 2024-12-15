// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let zipUrl = ""
let checksum = ""

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
