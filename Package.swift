// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let zipUrl = "https://api.github.com/repos/NakaokaRei/SwiftPackageXCFrameworkSample/releases/assets/213499002.zip"
let checksum = "10b08bcc1dc2c9bd03ced485d6f51ac58d6c6232acc0c17d95f83cb3ece04cf0"

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
