// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftCppExample",
    products: [
        .library(
            name: "SwiftCppExample",
            targets: ["SwiftTarget"]
        ),
        .executable( // Add an executable product
            name: "MyExecutable",
            targets: ["MyExecutableTarget"]
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
            name: "ObjCTarget",
            dependencies: ["CppTarget"],
            path: "Sources/ObjCTarget",
            publicHeadersPath: "include", // Make ObjC headers public
            cxxSettings: [
              .headerSearchPath("../../") // Additional include directories if needed
            ]
        ),
        .target(
            name: "SwiftTarget",
            dependencies: ["CppTarget", "ObjCTarget"],  // Swift target depends on the C++ target
            path: "Sources/SwiftTarget",  // Path to your Swift source files
            cxxSettings: [
              .headerSearchPath("../../") // Additional include directories if needed
            ],
            swiftSettings: [
              .interoperabilityMode(.Cxx), // C++ interoperability setting
            ]
        ),
        .executableTarget( // Define the executable target
            name: "MyExecutableTarget",
            dependencies: ["SwiftTarget"], // Depends on SwiftTarget
            path: "Sources/MyExecutableTarget",
            cxxSettings: [
              .headerSearchPath("../../") // Additional include directories if needed
            ],
            swiftSettings: [
              .interoperabilityMode(.Cxx), // C++ interoperability setting
            ]
        ),
    ]
)
