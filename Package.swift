// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "DivKitPro",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(name: "DivKitPro", targets: ["WrapperForDivKitPro"]),
  ],
  dependencies: [
    .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.2.0"),
    .package(url: "https://github.com/divkit/divkit-ios.git", from: "27.0.0"),
  ],
  targets: [
    .binaryTarget(
      name: "DivKitPro",
      url: "https://div-storage.s3.yandex.net/releases/DivKitPro-2.0.0.xcframework.zip",
      checksum: "09ab0254f5bf8803f80d702131e98040c9674ca9893735760078ac46e34bcace"
    ),
    .target(
      name: "WrapperForDivKitPro",
      dependencies: [
        .target(name: "DivKitPro"),
        .product(name: "DivKit", package: "divkit-ios"),
        .product(name: "DivKitExtensions", package: "divkit-ios"),
        .product(name: "Lottie", package: "lottie-ios"),
      ],
      path: "wrapper-library-ios"
    ),
  ]
)
