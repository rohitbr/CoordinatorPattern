//
//  HomeCoordinatorView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct HomeCoordinatorView: View {
    
    @StateObject private var coordinator = HomeCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .main)
                .navigationDestination(for: HomePage.self) { page in
                    coordinator.build(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreen) { fullScreen in
                    coordinator.build(fullScreen: fullScreen)
                }
        }
        .environmentObject(coordinator)
    }
}
