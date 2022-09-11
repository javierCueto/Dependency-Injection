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
    let apiClient: ApiClient = ApiClientImp()
    
    func makeHomeView() -> UIViewController {
        let randomNumber = RandomNumberImp()
        let viewModel = HomeViewModelImp(randomNumber: randomNumber)
        
        let controller = HomeViewController(viewModel: viewModel)
        controller.number = 117
        
        navigation.setViewControllers([controller], animated: true)
        return navigation
    }
}



