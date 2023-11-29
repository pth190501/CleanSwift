//
//  AppDelegate.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
           window?.makeKeyAndVisible()

           let rootVC = FirstViewController()
           let navController = UINavigationController(rootViewController: rootVC)
           window?.rootViewController = navController

           return true
    }


}

