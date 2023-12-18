// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.3-95-g54f78c5d8b"

let package = Package(
    name: "BNBMakeup",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBMakeup",
            targets: [
                "BNBMakeup",
                "BNBMakeup_BNBSdkCore",
                "BNBMakeup_BNBEffectPlayer",
                "BNBMakeup_BNBScripting",
                "BNBMakeup_BNBFaceTracker",
                "BNBMakeup_BNBSkin",
                "BNBMakeup_BNBLips"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBSkin.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBLips.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBMakeup",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.3-95-g54f78c5d8b/BNBMakeup.zip",
            checksum: "56a1393a1c0a661cc9a2669778c541faa0efc0688449312b180393d6742a7242"
        ),
        .target(
            name: "BNBMakeup_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBMakeup_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBMakeup_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBMakeup_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
        .target(
            name: "BNBMakeup_BNBSkin",
            dependencies: [
                .product(
                    name: "BNBSkin",
                    package: "BNBSkin"
                ),
            ]
        ),
        .target(
            name: "BNBMakeup_BNBLips",
            dependencies: [
                .product(
                    name: "BNBLips",
                    package: "BNBLips"
                ),
            ]
        ),
    ]
)
