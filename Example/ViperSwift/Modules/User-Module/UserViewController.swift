//
//  UserViewController.swift
//  ViperSwift
//
//  Created by MacBook-Na on 2020/10/04.
//  Copyright (c) 2020 CocoaPods. All rights reserved.
//
//
import UIKit
import ViperSwift

fileprivate protocol UserViewable: Viewable {
    
}

class UserViewController: UIViewController, UserViewable {
    
    typealias PresenterType = UserPresenter
    var presenter: PresenterType?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuate()
    }
    
    private func configuate() {
        nameLabel.text = presenter?.user.name
        ageLabel.text = "\(presenter?.user.age ?? 0)"
        emailLabel.text = presenter?.user.email
    }
}
