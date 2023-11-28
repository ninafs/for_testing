// swift-tools-version:5.5

import class Foundation.ProcessInfo
import PackageDescription

let package = Package(
    name: "DivKitPro",
    platforms: [
        .iOS(.v11),
      ],
    products: [
        .library(
            name: "DivKitPro",
            targets: ["DivKitPro"]),
        .library(
            name: "DivKitProLottie",
            targets: ["DivKitProLottie"]),
    ],
    dependencies: [
      divkitDependency(),
      .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.2.0"),
    ],
    targets: [
        .target(
            name: "DivKitPro",
            dependencies: [
              .product(name: "DivKit", package: "divkit-ios"),
              .product(name: "DivKitExtensions", package: "divkit-ios"),
            ],
            path: "DivKitPro"
        ),
        .target(
            name: "DivKitProLottie",
            dependencies: [
              .product(name: "DivKit", package: "divkit-ios"),
              .product(name: "DivKitExtensions", package: "divkit-ios"),
              .product(name: "Lottie", package: "lottie-ios"),
            ],
            path: "DivKitProLottie"
        ),
    ]
)

func divkitDependency() -> Package.Dependency {
  let url = ProcessInfo.processInfo.environment["DIVKIT_IOS_SPM_REPO"] ?? "https://github.com/divkit/divkit-ios.git"
  return .package(url: url, from: "28.0.0")
}
