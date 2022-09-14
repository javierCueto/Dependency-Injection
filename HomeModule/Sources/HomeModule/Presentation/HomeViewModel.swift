//
//  HomeViewModel.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

public protocol HomeViewModel {
    func viewDidLoad()
    func printRandomNumber(initNumber: Int, endNumber: Int)
}

public final class HomeViewModelImp: HomeViewModel {
    
    private let randomNumber: RandomNumber
    private let loadDataUseCase: LoadDataUseCase
    
    public init(randomNumber: RandomNumber, loadDataUseCase: LoadDataUseCase) {
        self.randomNumber = randomNumber
        self.loadDataUseCase = loadDataUseCase
    }
    
    public func viewDidLoad() {
        print("hello from HomeViewModel")
    }
    
    public func printRandomNumber(initNumber: Int, endNumber: Int) {
        print(randomNumber.random(initNumber: initNumber, endNumber: endNumber))
    }
    
    func load() {
        loadDataUseCase.execute { hey in
            print(hey)
        }
    }
    
}
