//
//  SplashPresenter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import ViperSwift

fileprivate protocol SplashPresenterable: Presenterable {
    
}

class SplashPresenter: SplashPresenterable {
    
    typealias ViewType       = SplashViewController
    typealias InteractorType = SplashInteractor
    typealias RouterType     = SplashRouter
    typealias EntityType     = Void
    
    private(set) var dependencies: PresenterDependencies
    
    required init(dependencies: PresenterDependencies) {
        self.dependencies = dependencies
    }
    
    func viewDidLoad() {
        dependencies.interactor.delay()
    }
    
    func presentToUser() {
        let user = User(name: "Nahanwoong", age: 28, email: "nibdevn@gmail.com")
        let view = UserRouter.loadViewModule(user: user)
        dependencies.router.present(view, modalPresentationStyle: .fullScreen)
    }
}
