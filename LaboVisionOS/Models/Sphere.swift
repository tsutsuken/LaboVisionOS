//
//  Sphere.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/18.
//

import Foundation

enum Sphere: String, Identifiable, CaseIterable {
    case red, blue, yellow
    var id: Self { self }

    var title: String {
        switch self {
        case .red:
            return "Red"
        case .blue:
            return "Blue"
        case .yellow:
            return "Yellow"
        }
    }

    var description: String {
        switch self {
        case .red:
            return "This is red sphere"
        case .blue:
            return "This is blue sphere"
        case .yellow:
            return "This is yellow sphere"
        }
    }

    var modelName: String {
        switch self {
        case .red:
            return "Sphere_Red"
        case .blue:
            return "Sphere_Blue"
        case .yellow:
            return "Sphere_Yellow"
        }
    }
}
