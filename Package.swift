// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PullTheTicketContracts",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "PullTheTicketContracts", targets: ["PullTheTicketContracts"])
    ],
    dependencies: [
        .package(url: "https://github.com/AlbertBudanov/PullTheTicketModels.git", branch: "main")
    ],
    targets: [
        .target(
            name: "PullTheTicketContracts",
            dependencies: ["PullTheTicketModels"]
        )
    ]
)
