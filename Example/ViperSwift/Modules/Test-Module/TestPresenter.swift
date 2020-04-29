//
//  TestPresenter.swift
//  ViperSwift_Example
//
//  Created by MacBook-Na on 2020/04/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

class TestPresenter: TestPresenterable {
    
    private(set) var dependencies: TestPresenterDependencies
    init(dependencies: TestPresenterDependencies) { self.dependencies = dependencies }
    
}

