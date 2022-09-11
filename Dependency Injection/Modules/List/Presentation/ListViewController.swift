//
//  ListViewController.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

import UIKit

final class ListViewController: UIViewController {
    
    private let viewModel: ListViewModel
    
    init(viewModel: ListViewModel) {
    //init(viewModel: ListViewModel = ListViewModelImp() ){
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
