//
//  MainFactory+List.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol ListFactory {
    func makeListView()
}

extension MainFactoryImp: ListFactory {
    func makeListView() {
        print("no implementation")
    }
}

extension MainFactoryImp: HomeViewControllerCoordinator {
    func didClickContinueButton() {
        makeListView()
    }
}

