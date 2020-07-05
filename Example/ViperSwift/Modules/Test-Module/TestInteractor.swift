//
//  TestInteractor.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/07/05.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//

import Foundation
import ViperSwift

fileprivate protocol TestInteractorable: Interactorable {
    
}

class TestInteractor: TestInteractorable {
    typealias PresenterType = TestPresenter
    var presenter: TestPresenter!
}
