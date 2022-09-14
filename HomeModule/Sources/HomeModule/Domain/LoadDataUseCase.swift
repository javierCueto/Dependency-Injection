//
//  LoadDataUseCase.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 13/09/22.
//

public protocol LoadDataUseCase {
    func execute(completion: @escaping (String) -> Void)
}

public struct LoadDataUseCaseImp: LoadDataUseCase {
    private var loadDataRepository: LoadDataRepository
    
    public init(loadDataRepository: LoadDataRepository) {
        self.loadDataRepository = loadDataRepository
    }
    
    public func execute(completion: @escaping (String) -> Void) {
        loadDataRepository.fetchData(completion: completion)
    }
}
