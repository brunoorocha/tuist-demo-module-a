import ProjectDescription
import ProjectDescriptionHelpers

let proje = Project.project(
    with: "ModuleAFramework",
    bundleId: "com.my-company.modulea",
    dependencies: [
        // .external(name: "ModuleB")
    ],
    disableBundleAccessors: true,
    disableSynthesizedResourceAccessors: true
)
