//
//  MainView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var coordinator: HomeCoordinator
    
    var body: some View {
        List {
            Button("Push Details") {
                coordinator.push(.details)
            }
            Button("Sheet Information") {
                coordinator.present(sheet: .information)
            }
            Button("FullScreen Settings") {
                coordinator.present(fullScreenCover: .settings)
            }
        }
        .navigationTitle("Main View")
    }
}
