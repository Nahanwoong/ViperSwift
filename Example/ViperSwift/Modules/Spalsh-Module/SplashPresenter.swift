//
//  SplashPresenter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/07/05.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import ViperSwift

fileprivate protocol SplashPresenterable: Presenterable {
    func delayProcess()
    func presentToTest()
}

class SplashPresenter: SplashPresenterable {
    
    typealias ViewType       = SplashViewController
    typealias InteractorType = SplashInteractor
    typealias RouterType     = SplashRouter
    
    private(set) var dependencies: PresenterDependencies
    
    required init(dependencies: PresenterDependencies) {
        self.dependencies = dependencies
    }
    
    func delayProcess() {
        dependencies.interactor.startDelay(duration: 2)
    }
    
    func presentToTest() {
        let module = TestRouter.assembleModule()
        dependencies.router.present(module, animated: true)
    }
}

extension SplashPresenter: SplashInteractorableCallbackable {
    func delayedTime() {
        presentToTest()
    }
}
