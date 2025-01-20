// swift-tools-version:5.7
import PackageDescription

let package = Package(
  name: "PlotlineLottie",
  // Minimum platform versions should be kept in sync with the per-platform targets in PlotlineLottie.xcodeproj, lottie-ios.podspec, and lottie-spm's Package.swift
  platforms: [.iOS("11.0"), .macOS("10.11"), .tvOS("11.0"), .custom("visionOS", versionString: "1.0")],
  products: [.library(name: "PlotlineLottie", targets: ["PlotlineLottie"])],
  dependencies: [
    .package(url: "https://github.com/airbnb/swift", .upToNextMajor(from: "1.0.1")),
  ],
  targets: [
    .target(
      name: "PlotlineLottie",
      path: "Sources",
      exclude: [
        "Private/EmbeddedLibraries/README.md",
        "Private/EmbeddedLibraries/ZipFoundation/README.md",
        "Private/EmbeddedLibraries/EpoxyCore/README.md",
        "Private/EmbeddedLibraries/LRUCache/README.md",
      ],
      resources: [.copy("PrivacyInfo.xcprivacy")]),
  ])
