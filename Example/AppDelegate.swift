//
//  AppDelegate.swift
//  Example
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import UIKit
import TrackingSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let tracking = Tracking.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        tracking.setupListenNotification()
        tracking.postData(funcName: #function)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
       tracking.postData(funcName: #function)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       tracking.postData(funcName: #function)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        tracking.postData(funcName: #function)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       tracking.postData(funcName: #function)
    }

    func applicationWillTerminate(_ application: UIApplication) {
       tracking.postData(funcName: #function)
    }
}

