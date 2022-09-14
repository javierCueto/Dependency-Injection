//
//  LoadDataRepository.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 13/09/22.
//

import Pack
import HomeModule

struct LoadDataRepositoryImp: LoadDataRepository {
    var apiFinal: ApiFinal
    
    func fetchData(completion: @escaping (String) -> Void) {
        apiFinal.request(endpoint: .list) { result in
            switch result {
                
            case .success(let message):
                completion(message)
            case .failure(let error):
                completion(error.localizedDescription)
            }
        }
    }
    
}
    

