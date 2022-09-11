//
//  HomeViewController.swift.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

import UIKit

protocol HomeViewControllerCoordinator {
    func didClickContinueButton()
}

final class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModel
    var coordinator: HomeViewControllerCoordinator?
    var number: Int?
    var controllerName = "Home"
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    func buttonClicked() {
        let number1FromTexField = 1
        let number2FromTexField = 200
        viewModel.printRandomNumber(initNumber: number1FromTexField, endNumber: number2FromTexField)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        view.backgroundColor = .darkGray
    }
    



}

