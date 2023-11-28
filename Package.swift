// swift-tools-version:5.5

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
  if let url = ProcessInfo.processInfo.environment["DIVKIT_IOS_SPM_REPO"] {
    return .package(url: url, : "28.11.0")
  }
  return .package(url: "https://github.com/divkit/divkit-ios.git", from: "28.0.0")
}
