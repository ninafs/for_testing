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
      url: "https://div-storage.s3.yandex.net/releases/DivKitPro-2.0.1.xcframework.zip",
      checksum: "a58734d0d328179f82875fdc01aaa76b5ab0a09820bc84e2e5f1ccdacaf85342"
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
