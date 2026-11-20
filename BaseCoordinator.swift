//
//  BaseCoordinator.swift
//  CoordinatorPattern
//
//  Created by rohitramachandra.b on 20/11/26.
//

import SwiftUI
import Combine

open class BaseCoordinator<PageType, SheetType, FullScreenType>: ObservableObject {
    
    public typealias Page = PageType
    public typealias Sheet = SheetType
    public typealias FullScreen = FullScreenType
    
    @Published var path: [Page] = []
    @Published var sheet: Sheet?
    @Published var fullScreen: FullScreen?
    
    public private(set) var rootPage: Page?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreen) {
        self.fullScreen = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreen = nil
    }
}
