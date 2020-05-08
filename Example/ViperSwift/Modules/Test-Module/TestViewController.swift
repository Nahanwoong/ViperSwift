//
//  TestViewController.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ViperSwift

private protocol TestViewable : Viewable {
    
}

class TestViewController: UIViewController, TestViewable {

    typealias P = TestPresenter
    var presenter: TestPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()   
    }
}
