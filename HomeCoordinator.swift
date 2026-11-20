//
//  HomeCoordinator.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI

enum HomePage: String, Identifiable {
    
    case main, details, more
    
    var id: String {
        self.rawValue
    }
}

enum HomeSheet: String, Identifiable {
    
    case information
    
    var id: String {
        self.rawValue
    }
}

enum HomeFullScreenCover: String, Identifiable {
    
    case settings
    
    var id: String {
        self.rawValue
    }
}
class HomeCoordinator: BaseCoordinator<HomePage, HomeSheet, HomeFullScreenCover> {
    @ViewBuilder
    func build(page: HomePage) -> some View {
        switch page {
        case .main:
            MainView()
        case .details:
            DetailsView()
        case .more:
            MoreView()
        }
    }
    
    @ViewBuilder
    func build(sheet: HomeSheet) -> some View {
        switch sheet {
        case .information:
            InformationView()
        }
    }
    
    @ViewBuilder
    func build(fullScreen: HomeFullScreenCover) -> some View {
        switch fullScreen {
        case .settings:
            SettingsView()
        }
    }
}
