//
//  AppDelegate.swift
//  Example
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let tracking = Tracking.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        tracking.setupListenNotification()
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .appDelegate, event: event)
    }
}
