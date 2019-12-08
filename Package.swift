// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MarkdownKit",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "MarkdownKit_iOS",
            targets: ["MarkdownKit_iOS"]
        ),
        .library(
            name: "MarkdownKit_macOS",
            targets: ["MarkdownKit_macOS"]
        ),
    ],
    targets: [
        .target(
            name: "MarkdownKit_iOS", 
            path: ["MarkdownKit/Sources/Common", "MarkdownKit/Sources/UIKit"]),
        .target(
            name: "MarkdownKit_macOS", 
            path: ["MarkdownKit/Sources/Common", "MarkdownKit/Sources/AppKit"]),
    ]
)