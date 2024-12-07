// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RiveRuntime",
    platforms: [.iOS("14.0"), .macOS("13.1")],
    products: [
        .library(
            name: "RiveRuntime",
            targets: ["RiveRuntime"])],
    targets: [
        .binaryTarget(
            name: "RiveRuntime",
            url: "https://github.com/yashshah98/rive-ios/releases/download/1.0.0/RiveRuntime.xcframework.zip",
            checksum: "c6aca747e4df749f14a3f922d78aa5b7358868de71c0c9547dcdb9f028ba9ce0"
        ),
        .target(
            name: "RiveRuntime-Resources",
            path: "Resources",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ]
)
