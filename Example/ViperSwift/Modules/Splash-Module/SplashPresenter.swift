//
//  SplashPresenter.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

class SplashPresenter: SplashPresenterable {
    required init(dependencies: (view: SplashViewController, interactor: SplashInteractor, router: SplashRouter)) {
        self.dependencies = dependencies
    }
    
    var dependencies: (view: SplashViewController, interactor: SplashInteractor, router: SplashRouter)
    
    func delayProcess() {
        dependencies.interactor.startDelay(duration: 2)
    }
    
    func presentToTest() {
        let module = TestRouter.assembleModule()
        dependencies.router.present(module, .fullScreen, animated: true)
    }
}

extension SplashPresenter: SplashInteractorableCallbackable {
    func delayedTime() {
        presentToTest()
    }
}

