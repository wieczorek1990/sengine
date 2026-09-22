// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "simple-engine",
  platforms: [
    .macOS(.v15)
  ],
  targets: [
    .executableTarget(
      name: "Engine",
      dependencies: [],
      linkerSettings: [
        .linkedFramework("AppKit", .when(platforms: [.macOS]))
      ]
    )
  ]
)
