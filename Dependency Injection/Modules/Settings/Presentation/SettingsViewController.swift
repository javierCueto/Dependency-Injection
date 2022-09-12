//
//  SettingsViewController.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 12/09/22.
//

import UIKit

// ❌ Avoid coupling concrete type in another objects
final class SettingsViewController: UIViewController {
    
    private let viewModel: SettingsViewModelImp
    
    init(viewModel: SettingsViewModelImp){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
    }
}


