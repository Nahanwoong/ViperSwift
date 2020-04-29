//
//  Test+Protocols.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import ViperSwift

protocol TestViewable : Viewable {
    
}

protocol TestInteractorable: Interactorable {
    
}

protocol TestPresenterable: Presenterable {
    
}

typealias TestPresenterDependencies = (
    view: TestViewController,
    interactor: TestInteractor,
    router: TestRouter
)

protocol TestRouterable: Routerable {
    static func assembleModule() -> UIViewController
}
