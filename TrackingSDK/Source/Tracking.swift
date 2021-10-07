//
//  Tracking.swift
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import UIKit

public class Tracking: NSObject {
    
    static let shared = Tracking()
    private let notificationDefault = NotificationCenter.default
    
    private override init() { }
    
    func setupListenNotification() {
        notificationDefault.addObserver(self,
                                        selector: #selector(logEventApp),
                                        name: .appDelegate,
                                        object: nil)
        
        notificationDefault.addObserver(self,
                                        selector: #selector(logEventScreen),
                                        name: .screen,
                                        object: nil)
    }
    
    @objc private func logEventApp(notification: Notification) {
        print("\n\n------- SDK: debug --------")
        if let event = notification.object as? EventType {
            print(event.className)
        }
    }
    
    @objc private func logEventScreen(notification: Notification) {
        print("\n\n------- SDK: debug --------")
        if let event = notification.object as? EventType {
            print(event)
        }
    }
    
    func postData(notificationName: Notification.Name, event: EventType) {
        notificationDefault.post(name: notificationName, object: event)
    }
    
    func postSystemData() {
        let systemInfo = SystemInfo()
        let encoder = JSONEncoder()
        if let jsonData = try? encoder.encode(systemInfo),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)
        }
    }
    
    func trackScrollView(_ scrollView: UIScrollView) {
        scrollView.delegate = self
        scrollViewDidEndDecelerating(scrollView)
    }
}

extension Tracking: UIScrollViewDelegate {
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let className = NSStringFromClass(self.classForCoder)
        let y = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        let scrollViewHeight = scrollView.frame.height
        let seenHeight = y + scrollViewHeight
        let scrollPercent = seenHeight / contentHeight * 100
        
        let event = Event(className: className,
                          eventName: "Scroll",
                          properties: ["Scroll Percent" : scrollPercent])
        postData(notificationName: .screen, event: event)
    }
}
