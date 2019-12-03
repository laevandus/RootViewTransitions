//
//  RootView.swift
//  RootViewTransitions
//
//  Created by Toomas Vahter on 30.11.2019.
//  Copyright © 2019 Augmented Code. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var appFlowCoordinator: AppFlowCoordinator
    
    @ViewBuilder
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            if appFlowCoordinator.activeFlow == .main {
                ContentView().transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
            else if appFlowCoordinator.activeFlow == .login {
                LoginView().transition(.asymmetric(insertion: .slide, removal: .opacity))
            }
            else {
                EmptyView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(AppFlowCoordinator())
    }
}
