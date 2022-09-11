//
//  MainFactory.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

import UIKit

protocol MainFactory {
    func makeHomeView() -> UIViewController
}

struct MainFactoryImp: MainFactory {
    let navigation: UINavigationController = UINavigationController()
    func makeHomeView() -> UIViewController {
        let viewModel = HomeViewModel()
        let controller = HomeViewController(viewModel: viewModel)
        navigation.setViewControllers([controller], animated: true)
        return navigation
    }
    
    
}
