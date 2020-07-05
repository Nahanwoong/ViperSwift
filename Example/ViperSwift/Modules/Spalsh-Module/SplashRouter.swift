//
//  SplashRouter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/07/05.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import ViperSwift

fileprivate protocol SplashRouterable: Routerable {
    static func assembleModule() -> UIViewController
}

class SplashRouter: SplashRouterable {
    func present(_ view: UIViewController, _ modalPresentationStyle: UIModalPresentationStyle, animated: Bool, _completion: @escaping (() -> Void)) {
        
    }
    
    func present(_ view: UIViewController, _ modalPresentationStyle: UIModalPresentationStyle, animated: Bool) {
        
    }
    
    
    typealias ViewType = SplashViewController
    private(set) var view: SplashViewController
    
    required init(view: SplashViewController) {
        self.view = view
    }
    
    static func assembleModule() -> UIViewController {
        let view       = SplashViewController()
        let interactor = SplashInteractor()
        let router     = SplashRouter(view: view)
        let presenter  = SplashPresenter(dependencies: (view: view, interactor: interactor, router: router))
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
}
