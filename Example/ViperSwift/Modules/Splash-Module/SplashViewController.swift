//
//  SplashViewController.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, SplashViewable {
    
    typealias P = SplashPresenter
    var presenter: SplashPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delayProcess()
    }
}
