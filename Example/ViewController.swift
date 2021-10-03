//
//  ViewController.swift
//  Example
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import UIKit
import TrackingSDK

class ViewController: UIViewController {

    let tracking = Tracking.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tracking.postData(funcName: #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tracking.postData(funcName: #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tracking.postData(funcName: #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tracking.postData(funcName: #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        tracking.postData(funcName: #function)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        tracking.postData(funcName: #function)
    }
}

