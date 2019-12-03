//
//  ContentView.swift
//  RootViewTransitions
//
//  Created by Toomas Vahter on 30.11.2019.
//  Copyright © 2019 Augmented Code. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appFlowCoordinator: AppFlowCoordinator
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .red]),
                           startPoint: .topTrailing,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            Button(action: appFlowCoordinator.showLoginView) {
                Text("Logout").foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppFlowCoordinator())
    }
}
