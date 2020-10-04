//
//  SplashRouter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import UIKit
import ViperSwift

fileprivate protocol SplashRouterable: Routerable {
    static func loadViewModule() -> UIViewController
    static func loadNavigationModule() -> UINavigationController
}

class SplashRouter: SplashRouterable {
    
    typealias ViewType = SplashViewController
    private(set) var view: SplashViewController
    
    required init(view: SplashViewController) {
        self.view = view
    }
    
    static func loadViewModule() -> UIViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: "Splash", bundle: nil)
        let view       = storyboard.instantiateViewController(withIdentifier: "SplashViewController") as! SplashViewController
        let interactor = SplashInteractor()
        let router     = SplashRouter(view: view)
        let presenter  = SplashPresenter(dependencies: (view: view, interactor: interactor, router: router, entities: ()))
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
    
    static func loadNavigationModule() -> UINavigationController {
        return UINavigationController(rootViewController: loadViewModule())
    }
}
