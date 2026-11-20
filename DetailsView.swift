//
//  DetailsView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject private var coordinator: HomeCoordinator

    var body: some View {
        List {
            Button("Push More") {
                coordinator.push(.more)
            }
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("Details View")
    }
}
