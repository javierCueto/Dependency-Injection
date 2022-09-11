//
//  ApiClient.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol ApiClient {
    func request(endpoint: Endpoint) -> Result<String,Error>
}

struct ApiClientImp: ApiClient {
    func request(endpoint: Endpoint) -> Result<String, Error> {
        return .success("Hello")
    }
    
    
}
