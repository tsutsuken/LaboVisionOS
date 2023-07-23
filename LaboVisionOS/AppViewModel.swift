//
//  AppViewModel.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/21.
//

import SwiftUI
import Observation

@Observable
class AppViewModel {
    var isShowingModelDetail: Bool = false
    let windowGroupModelDetail = "WindowGroupModelDetail"
    var selectedSphere: SceneObject? = .redSphere
}
