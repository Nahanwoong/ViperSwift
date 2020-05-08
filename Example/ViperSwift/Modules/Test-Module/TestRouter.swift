//
//  TestRouter.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import UIKit
import ViperSwift

private protocol TestRouterable: Routerable {
    static func assembleModule() -> UIViewController
}

class TestRouter: TestRouterable {
    
    typealias V = TestViewController
    private(set) var view: TestViewController
    
    required init(view: TestViewController) {
        self.view = view
    }
    
    static func assembleModule() -> UIViewController {
        let view = TestViewController()
        let interactor = TestInteractor()
        let router = TestRouter(view: view)
        let presenter = TestPresenter(dependencies: (view: view, interactor: interactor, router: router))

        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
