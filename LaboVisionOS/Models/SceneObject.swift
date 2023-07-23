//
//  SceneObject.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/18.
//

import Foundation
import RealityKitContent

enum SceneObject: String, Identifiable, CaseIterable {
    case redSphere, blueSphere, yellowSphere
    var id: Self { self }

    var title: String {
        switch self {
        case .redSphere:
            return "Red"
        case .blueSphere:
            return "Blue"
        case .yellowSphere:
            return "Yellow"
        }
    }

    var description: String {
        switch self {
        case .redSphere:
            return "This is red sphere"
        case .blueSphere:
            return "This is blue sphere"
        case .yellowSphere:
            return "This is yellow sphere"
        }
    }

    var modelName: String {
        switch self {
        case .redSphere:
            return "Sphere_Red"
        case .blueSphere:
            return "Sphere_Blue"
        case .yellowSphere:
            return "Sphere_Yellow"
        }
    }

    var bundle: Bundle? {
        return realityKitContentBundle
    }
}
