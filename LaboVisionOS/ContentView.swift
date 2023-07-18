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
    @State private var selectedSphere: Sphere? = .red

    var body: some View {
        NavigationSplitView {
            List(Sphere.allCases, selection: $selectedSphere) { sphere in
                Text(sphere.title)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedSphere = sphere
                    }
            }
            .navigationTitle("Spheres")
        } detail: {
            VStack {
                Model3D(named: selectedSphere?.modelName ?? "", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)

                Text(selectedSphere?.description ?? "")
            }
            .navigationTitle("Sphere")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
