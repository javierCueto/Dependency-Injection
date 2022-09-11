//
//  ListViewModel.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol ListViewModel {
    func viewDidLoad()
}

final class ListViewModelImp: ListViewModel {
    
    let api: ApiClient
    
    init(){
        api = ApiClientImp()
    }
    
    func viewDidLoad() {
        api.request(endpoint: .list) { result in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    //    ApiClientGlobalImp.shared.request(endpoint: .list) { result in
    //        switch result {
    //        case .success(let data):
    //            print(data)
    //        case .failure(let error):
    //            print(error)
    //        }
    //    }
    
}


