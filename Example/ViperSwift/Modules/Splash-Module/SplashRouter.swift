//
//  SplashRouter.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import UIKit

class SplashRouter: SplashRouterable {
    
    typealias V = SplashViewController
    private(set) var view: SplashViewController
    
    required init(view: SplashViewController) {
        self.view = view
    }
    
    static func assembleModule() -> UIViewController {
        let view = SplashViewController()
        let interactor = SplashInteractor()
        let router = SplashRouter(view: view)
        let presenter = SplashPresenter(dependencies: (view: view, interactor: interactor, router: router))

        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
