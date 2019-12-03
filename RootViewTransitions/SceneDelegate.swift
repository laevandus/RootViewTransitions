//
//  SceneDelegate.swift
//  RootViewTransitions
//
//  Created by Toomas Vahter on 30.11.2019.
//  Copyright © 2019 Augmented Code. All rights reserved.
//

import UIKit
import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)

        let appFlowCoordinator = AppFlowCoordinator()
        let rootView = RootView().environmentObject(appFlowCoordinator)
        window.rootViewController = UIHostingController(rootView: rootView)
        self.window = window
        window.makeKeyAndVisible()
    }
}
