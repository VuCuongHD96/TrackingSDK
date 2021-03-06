//
//  ViewController.swift
//  Example
//
//  Created by Sun on 10/3/21.
//  Copyright © 2021 Sun. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Outlet
    @IBOutlet private weak var scrollView: UIScrollView!
    
    // MARK: - Property
    let tracking = Tracking.shared
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
    }
    
    // MARK: - View
    private func setupView() {
        scrollView.delegate = self
    }
    
    // MARK: - Action
    @IBAction func loginAction(_ sender: Any) {
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className, eventName: #function)
        tracking.postData(notificationName: .screen, event: event)
    }
}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let y = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        let scrollPercent = y / contentHeight * 100
        let className = NSStringFromClass(self.classForCoder)
        let event = Event(className: className,
                          eventName: "Scroll",
                          properties: ["Scroll Percent" : scrollPercent])
        tracking.postData(notificationName: .screen, event: event)
    }
}
