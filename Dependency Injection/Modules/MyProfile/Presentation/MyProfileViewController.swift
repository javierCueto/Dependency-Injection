//
//  MyProfileViewController.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 12/09/22.
//

import UIKit

final class MyProfileViewController: UIViewController {
    
    private let viewModel: MyProfileViewModel
    
    init(viewModel: MyProfileViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        title = "My Profile"
    }
}



