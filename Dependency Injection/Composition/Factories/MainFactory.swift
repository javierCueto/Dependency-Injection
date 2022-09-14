//
//  MainFactory.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

import UIKit
import Pack
import HomeModule

protocol MainFactory {
    func makeHomeView() -> UIViewController
}

struct MainFactoryImp: MainFactory {
    
    let navigation: UINavigationController = UINavigationController()
    let apiClient: ApiClient = ApiClientImp()
    let apiFinal = ApiFinalImp()
    let container = DIContainer()
    
    func makeHomeView() -> UIViewController {
        let loadDataRepository = LoadDataRepositoryImp(apiFinal: apiFinal)
        let loadDataUseCase = LoadDataUseCaseImp(loadDataRepository: loadDataRepository)
        let randomNumber = RandomNumberImp()
        let viewModel = HomeViewModelImp(randomNumber: randomNumber, loadDataUseCase: loadDataUseCase)
        let controller = HomeViewController(viewModel: viewModel)
        controller.number = 117
        
        navigation.setViewControllers([controller], animated: true)
        return navigation
    }
}



