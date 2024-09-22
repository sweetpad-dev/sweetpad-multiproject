import ProjectDescription

let project = Project(
    name: "AFramework",
    targets: [
        .target(
            name: "AFramework",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.AFramework",
            sources: ["Sources/**"]
        ),
        .target(
            name: "AFrameworkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AFrameworkTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: "AFramework")]
        ),
    ]
)
