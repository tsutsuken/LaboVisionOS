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
    @Environment(\.openWindow) private var openWindow

    let sceneObjects: [SceneObject] = [.redSphere, .blueSphere, .yellowSphere]

    var body: some View {
        @Bindable var appViewModel = appViewModel

        NavigationSplitView {
            List(MenuItem.allCases, selection: $appViewModel.selectedMenuItem) { menuItem in
                Text(menuItem.title)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        appViewModel.selectedMenuItem = menuItem
                    }
            }
            .navigationTitle("Menu")
        } detail: {
            switch appViewModel.selectedMenuItem {
            case .local:
                ScrollView {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                        ForEach(sceneObjects, id: \.self) { sceneObject in
                            VStack {
                                Image(sceneObject.thumbnailPath)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                Text(sceneObject.description)
                                Button {
                                    appViewModel.selectedSceneObject = sceneObject
                                    openWindow(id: appViewModel.windowGroupModelDetail)
                                } label: {
                                    Text("ウィンドウで表示")
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Local")
                .padding()
            case .online:
                EmptyView()
            case .none:
                EmptyView()
            }

        }
    }
}

#Preview {
    ContentView()
}
