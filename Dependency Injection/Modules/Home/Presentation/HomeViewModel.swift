//
//  HomeViewModel.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

protocol HomeViewModel {
    func viewDidLoad()
    func printRandomNumber(initNumber: Int, endNumber: Int)
}

final class HomeViewModelImp: HomeViewModel {
    
    private let randomNumber: RandomNumber
    
    init(randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
    }
    
    func viewDidLoad() {
        print("hello from HomeViewModel")
    }
    
    func printRandomNumber(initNumber: Int, endNumber: Int) {
        print(randomNumber.random(initNumber: initNumber, endNumber: endNumber))
    }
    
}
