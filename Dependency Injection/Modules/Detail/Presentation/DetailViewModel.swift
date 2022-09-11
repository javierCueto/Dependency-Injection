//
//  DetailViewModel.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol DetailViewModel {
    func viewDidLoad()
}

final class DetailViewModelImp: DetailViewModel {
    
    struct Dependencies {
        let dependency1: Dependency1
        let dependency2: Dependency2
        let dependency3: Dependency3
        let dependency4: Dependency4
        let dependency5: Dependency5
    }
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    
//    private let dependency1: Dependency1
//    private let dependency2: Dependency2
//    private let dependency3: Dependency3
//    private let dependency4: Dependency4
//    private let dependency5: Dependency5
//
//    init(dependency1: Dependency1,
//         dependency2: Dependency2,
//         dependency3: Dependency3,
//         dependency4: Dependency4,
//         dependency5: Dependency5
//    ){
//        self.dependency1 = dependency1
//        self.dependency2 = dependency2
//        self.dependency3 = dependency3
//        self.dependency4 = dependency4
//        self.dependency5 = dependency5
//    }
    
    func viewDidLoad() {
        
    }
    
    
}
