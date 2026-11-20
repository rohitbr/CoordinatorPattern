//
//  MoreView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct MoreView: View {
    @EnvironmentObject private var coordinator: HomeCoordinator

    var body: some View {
        List {
            Button("Pop") {
                coordinator.pop()
            }
            Button("Pop to root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("More")
    }
}
