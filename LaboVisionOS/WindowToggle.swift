//
//  WindowToggle.swift
//  LaboVisionOS
//
//  Created by Ken Tsutsumi on 2023/07/22.
//

import SwiftUI

struct WindowToggle: View {
    var title: String
    var id: String
    @Binding var isShowing: Bool

    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View {
        Toggle(title, isOn: $isShowing)
            .onChange(of: isShowing) { _, isShowing in
                if isShowing {
                    openWindow(id: id)
                } else {
                    dismissWindow(id: id)
                }
            }
            .toggleStyle(.button)
    }
}
