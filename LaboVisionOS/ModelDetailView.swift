//
//  ModelDetailView.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/21.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ModelDetailView: View {
    @Environment(AppViewModel.self) private var appViewModel

    var body: some View {
        VStack {
            RealityView { content in
                if let scene = try? await Entity(named: appViewModel.selectedSphere?.modelName ?? "", in: appViewModel.selectedSphere?.bundle) {
                    content.add(scene)
                }
            }
        }
        .onDisappear {
            appViewModel.isShowingModelDetail = false
        }
    }
}

#Preview {
    ModelDetailView()
}
