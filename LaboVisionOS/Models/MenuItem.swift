//
//  MenuItem.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/28.
//

import Foundation

enum MenuItem: Identifiable, CaseIterable {
    case local, online
    var id: Self { self }

    var title: String {
        switch self {
        case .local:
            return "Local"
        case .online:
            return "Online"
        }
    }

}
