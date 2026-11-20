//
//  InformationView.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

struct InformationView: View {
    @EnvironmentObject private var coordinator: HomeCoordinator

    var body: some View {
        List {
            Button("Dismiss Sheet") {
                coordinator.dismissSheet()
            }
        }
    }
}
