//
//  TestPresenter.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import ViperSwift

private protocol TestPresenterable: Presenterable {
    
}

class TestPresenter: TestPresenterable {
    required init(dependencies: (view: TestViewController, interactor: TestInteractor, router: TestRouter)) {
        self.dependencies = dependencies
    }
    
    var dependencies: (view: TestViewController, interactor: TestInteractor, router: TestRouter)
    
    typealias V = TestViewController
    typealias I = TestInteractor
    typealias R = TestRouter
}

