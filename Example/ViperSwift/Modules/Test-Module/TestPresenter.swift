//
//  TestPresenter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/07/05.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import ViperSwift

fileprivate protocol TestPresenterable: Presenterable {
    
}

class TestPresenter: TestPresenterable {
    
    typealias ViewType       = TestViewController
    typealias InteractorType = TestInteractor
    typealias RouterType     = TestRouter
    
    private(set) var dependencies: PresenterDependencies
    
    required init(dependencies: PresenterDependencies) {
        self.dependencies = dependencies
    }
}
