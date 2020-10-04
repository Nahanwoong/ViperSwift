//
//  SplashInteractor.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//

import Foundation
import ViperSwift

fileprivate protocol SplashInteractorable: Interactorable {
    
}

class SplashInteractor: SplashInteractorable {
    typealias PresenterType = SplashPresenter
    var presenter: SplashPresenter?
    
    private let duration: TimeInterval = 2.0
    
    func delay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + duration, execute: {
            self.presenter?.presentToUser()
        })
    }
}
