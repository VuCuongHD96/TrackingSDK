//
//  Context.swift
//  TrackingSDK
//
//  Created by Sun on 05/10/2021.
//  Copyright © 2021 Sun. All rights reserved.
//

import Foundation

struct Context: Codable {
    var active = true
    var app = App()
    var campaign = Campaign()
    var device = Device()
    var ip = "8.8.8.8"
    var locale = "en-US"
    var location = Location()
    var network = Network()
    var library = Library()
    var page = Page()
    var referrer = Referrer()
    var screen = Screen()
    var groupID = "12345"
    var timezone = "Europe/Amsterdam"
    var userAgent =  "Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1"
}
