//
//  SplashInteractor.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import Foundation

class SplashInteractor: SplashInteractorable {
    
    typealias P = SplashPresenter
    var presenter: SplashPresenter!
    
    func startDelay(duration: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + duration, execute: {
            self.presenter.delayedTime()
        })
    }

}
