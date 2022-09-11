//
//  DetailViewController.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private let viewModel: DetailViewModel
    
    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
