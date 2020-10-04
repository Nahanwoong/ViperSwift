//
//  UserRouter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import UIKit
import ViperSwift

fileprivate protocol UserRouterable: Routerable {
    static func loadViewModule(user: User) -> UIViewController
    static func loadNavigationModule(user: User) -> UINavigationController
}

class UserRouter: UserRouterable {
    
    typealias ViewType = UserViewController
    private(set) var view: UserViewController
    
    required init(view: UserViewController) {
        self.view = view
    }
    
    static func loadViewModule(user: User) -> UIViewController {
        let view       = UserViewController()
        let interactor = UserInteractor()
        let router     = UserRouter(view: view)
        let presenter  = UserPresenter(dependencies: (view: view, interactor: interactor, router: router, entities: user))
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
    
    static func loadNavigationModule(user: User) -> UINavigationController {
        return UINavigationController(rootViewController: loadViewModule(user: user))
    }
}
