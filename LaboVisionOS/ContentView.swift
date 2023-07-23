//
//  ContentView.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/16.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(AppViewModel.self) private var appViewModel

    var body: some View {
        @Bindable var appViewModel = appViewModel

        NavigationSplitView {
            List(SceneObject.allCases, selection: $appViewModel.selectedSphere) { sphere in
                Text(sphere.title)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        appViewModel.selectedSphere = sphere
                    }
            }
            .navigationTitle("Spheres")
        } detail: {
            VStack {
                Model3D(named: appViewModel.selectedSphere?.modelName ?? "", bundle: appViewModel.selectedSphere?.bundle)
                    .padding(.bottom, 50)

                Text(appViewModel.selectedSphere?.description ?? "")
                WindowToggle(
                    title: "別ウィンドウで表示",
                    id: appViewModel.windowGroupModelDetail,
                    isShowing: $appViewModel.isShowingModelDetail
                )
            }
            .navigationTitle("Sphere")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
