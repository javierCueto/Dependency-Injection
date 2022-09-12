//
//  MainFactory+Detail.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 12/09/22.
//

protocol DetailFactory {
    func makeDetailView()
}

extension MainFactoryImp: DetailFactory {
    func makeDetailView() {
        
        let dependencies = DetailViewModelImp.Dependencies(
            dependency1: Dependency1Imp(),
            dependency2: Dependency2Imp(),
            dependency3: Dependency3Imp(),
            dependency4: Dependency4Imp(),
            dependency5: Dependency5Imp())
        
        let viewModel = DetailViewModelImp(dependencies: dependencies)
        let controller = DetailViewController(viewModel: viewModel)
        
        navigation.setViewControllers([controller], animated: true)
    }
}


