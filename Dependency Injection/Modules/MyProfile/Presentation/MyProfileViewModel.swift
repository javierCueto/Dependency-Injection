//
//  MyProfileViewModel.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 12/09/22.
//

protocol MyProfileViewModel {
    func viewDidLoad()
}

final class MyProfileViewModelImp1: MyProfileViewModel {
    func viewDidLoad() {
        print("implementation 1")
    }
}

final class MyProfileViewModelImp2: MyProfileViewModel {
    func viewDidLoad() {
        print("implementation 2")
    }
}





