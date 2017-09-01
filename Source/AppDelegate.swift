//
//  AppDelegate.swift
//  String Interpolation
//
//  Created by Christian Noon on 6/12/16.
//  Copyright © 2016 Alamofire. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // MARK: - App State Methods

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        window = {
            let window = UIWindow(frame: UIScreen.main.bounds)
            window.rootViewController = ViewController()
            window.backgroundColor = UIColor.white
            window.makeKeyAndVisible()

            return window
        }()

        return true
    }
//
//    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//        window = {
//            let window = UIWindow(frame: UIScreen.main.bounds)
//            window.rootViewController = ViewController()
//            window.backgroundColor = UIColor.white
//            window.makeKeyAndVisible()
//
//            return window
//        }()
//
//        return true
//    }
}
