//
//  SettingsView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject private var coordinator: HomeCoordinator

    var body: some View {
        List {
            Button("Dismiss Full Screen") {
                coordinator.dismissFullScreenCover()
            }
        }
    }
}
