//
//  AppFlowCoordinator.swift
//  RootViewTransitions
//
//  Created by Toomas Vahter on 30.11.2019.
//  Copyright © 2019 Augmented Code. All rights reserved.
//

import SwiftUI

final class AppFlowCoordinator: ObservableObject {
    @Published var activeFlow: Flow = .login
    
    func showLoginView() {
        withAnimation {
            activeFlow = .login
        }
    }
    
    func showMainView() {
        withAnimation {
            activeFlow = .main
        }
    }
}

extension AppFlowCoordinator {
    enum Flow {
        case login, main
    }
}
