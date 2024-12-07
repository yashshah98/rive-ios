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
            checksum: "cb8192a00d306dcaf329ed163b8a809452c5fb00270aac4ff89012aaad65b1da"
        ),
        .target(
            name: "RiveRuntime-Resources",
            path: "Resources",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ]
)
