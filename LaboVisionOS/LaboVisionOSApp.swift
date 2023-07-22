//
//  LaboVisionOSApp.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/16.
//

import SwiftUI

@main
struct LaboVisionOSApp: App {
    @State private var appViewModel = AppViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appViewModel)
        }

        WindowGroup(id: appViewModel.windowGroupModelDetail) {
            ModelDetailView()
                .environment(appViewModel)
        }
        .windowStyle(.volumetric)
    }
}
