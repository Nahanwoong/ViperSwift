//
//  UserInteractor.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//

import Foundation
import ViperSwift

fileprivate protocol UserInteractorable: Interactorable {
    
}

class UserInteractor: UserInteractorable {
    typealias PresenterType = UserPresenter
    weak var presenter: UserPresenter?
}
