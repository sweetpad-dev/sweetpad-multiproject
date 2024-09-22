import ProjectDescription

let project = Project(
    name: "sweetpad-test",
    targets: [
        .target(
            name: "sweetpad-test",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.sweetpad-test",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "AFramework", path: .relativeToRoot("Projects/AFramework"))
            ]
        ),
        .target(
            name: "sweetpad-testTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.sweetpad-testTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "sweetpad-test")]
        ),
    ]
)
