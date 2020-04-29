//
//  Splash+Protocols.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ViperSwift

protocol SplashViewable : Viewable {
    
}

protocol SplashInteractorable: Interactorable {
    func startDelay(duration: Double)
}

protocol SplashInteractorableCallbackable {
    func delayedTime()
}

protocol SplashPresenterable: Presenterable {
    func delayProcess()
    func presentToTest()
}

typealias SplashPresenterDependencies = (
    view: SplashViewController,
    interactor: SplashInteractor,
    router: SplashRouter
)

protocol SplashRouterable: Routerable {
    static func assembleModule() -> UIViewController
}
