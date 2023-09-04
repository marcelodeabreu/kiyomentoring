//
//  AppDelegate.swift
//  mentoriaMarcelo2
//
//  Created by Joao Marcus Dionisio Araujo on 28/08/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)

        let viewController = ViewController()

        window.rootViewController = viewController

        self.window = window

        self.window?.makeKeyAndVisible()

        return true
    }
}

