import ProjectDescription

let workspace = Workspace(
    name: "ModuleAFramework",
    projects: [
        "**",
    ],
    additionalFiles: [
        .glob(pattern: "AllTests.xctestplan"),
    ],
    generationOptions: .options(
        enableAutomaticXcodeSchemes: false,
        autogeneratedWorkspaceSchemes: .disabled
    )
)
