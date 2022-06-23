//
//  AppDelegate.swift
//  Book
//
//  Created by bùi thành công on 21/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ShowBook()
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

 

}

