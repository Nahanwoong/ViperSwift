//
//  SplashViewController.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import UIKit
import ViperSwift

fileprivate protocol SplashViewable: Viewable {
    
}

class SplashViewController: UIViewController, SplashViewable {
    
    typealias PresenterType = SplashPresenter
    var presenter: PresenterType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}
