// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftCppExample",
    products: [
        .library(
            name: "SwiftCppExample",
            targets: ["SwiftTarget"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CppTarget",
            path: "Sources/CppTarget",  // Path to your C++ source files
            publicHeadersPath: "include",       // Headers made available to other targets
            cxxSettings: [
              .headerSearchPath("../../") // Additional include directories if needed
            ]
        ),
        .target(
            name: "SwiftTarget",
            dependencies: ["CppTarget"],  // Swift target depends on the C++ target
            path: "Sources/SwiftTarget",  // Path to your Swift source files
            cxxSettings: [
              .headerSearchPath("../../") // Additional include directories if needed
            ],
            swiftSettings: [
              .interoperabilityMode(.Cxx), // C++ interoperability setting
            ]
        ),
    ]
)
