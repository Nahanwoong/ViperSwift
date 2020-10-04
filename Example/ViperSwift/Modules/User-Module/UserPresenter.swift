//
//  UserPresenter.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import Foundation
import ViperSwift

fileprivate protocol UserPresenterable: Presenterable {
    
}

class UserPresenter: UserPresenterable {
    
    typealias ViewType       = UserViewController
    typealias InteractorType = UserInteractor
    typealias RouterType     = UserRouter
    typealias EntityType     = User
    
    var user: User {
        dependencies.entities
    }
    
    private(set) var dependencies: PresenterDependencies
    
    required init(dependencies: PresenterDependencies) {
        self.dependencies = dependencies
    }
}
