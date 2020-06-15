//
//  ViewController.swift
//  EasyChatApp
//
//  Created by 大塚周 on 2020/06/15.
//  Copyright © 2020 大塚周. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController, UIApplicationDelegate{

    @IBOutlet weak var blackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(didTakeScreenCaptured(_:)),
            name: UIApplication.userDidTakeScreenshotNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(self, selector: #selector(didHomeButtonTapped), name:UIApplication.willResignActiveNotification, object: nil)
    }
    

    @objc private func didTakeScreenCaptured(_ notification: Notification) {
        print("スクショされた")
    }
    
    @objc private func didHomeButtonTapped(_ notification: Notification) {
        print("ホームボタンが押された")
    }


}


