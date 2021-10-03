//
//  Tracking.swift
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import Foundation

class Tracking {
    
    static let shared = Tracking()
    
    private init() { }
    
    func setupListenNotif() {
        NotificationCenter.default
            .addObserver(self,
                         selector: #selector(logEvent),
                         name: .appDelegate,
                         object: nil)
    }
    
    @objc private func logEvent(notification: Notification) {
        print("\n\n------- SDK: debug --------")
        if let event = notification.object as? String {
            print(event)
        }
    }
    
    func postData(funcName: String) {
        NotificationCenter.default.post(name: .appDelegate, object: funcName)
    }
}
