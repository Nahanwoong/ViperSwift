//
//  SplashInteractor.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/07/05.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//

import Foundation
import ViperSwift

fileprivate protocol SplashInteractorable: Interactorable {
    func startDelay(duration: Double)
}

protocol SplashInteractorableCallbackable {
    func delayedTime()
}

class SplashInteractor: SplashInteractorable {
    typealias PresenterType = SplashPresenter
    var presenter: SplashPresenter!
    
    func startDelay(duration: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + duration, execute: {
            self.presenter.delayedTime()
        })
    }
}
