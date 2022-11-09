// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Portfolio",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "Portfolio",
            targets: ["Portfolio"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
        .package(name: "SplashPublishPlugin", url: "https://github.com/JohnSundell/SplashPublishPlugin", from: "0.2.0")
    ],
    targets: [
        .executableTarget(
            name: "Portfolio",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
