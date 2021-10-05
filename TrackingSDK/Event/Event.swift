//
//  Event.swift
//  TrackingSDK
//
//  Created by Sun on 05/10/2021.
//  Copyright © 2021 Sun. All rights reserved.
//

import Foundation

protocol EventType {
    var className: String { get }
    var eventName: String { get }
    var properties: [String : Any] { get }
}

struct Event: EventType {
        
    var className = ""
    var eventName = ""
    var properties = [String : Any]()
    
    init(className: String, eventName: String, properties: [String : Any] = [:]) {
        self.className = className
        self.eventName = eventName
        self.properties = properties
    }
}
