//
//  ApiClient.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol ApiClient {
    func request(endpoint: Endpoint, completion: @escaping (Result<String,Error>) -> Void)
}

struct ApiClientImp: ApiClient {
    func request(endpoint: Endpoint, completion: @escaping (Result<String,Error>) -> Void) {
        completion(.success("hello"))
    }
}

final class ApiClientGlobalImp: ApiClient {
    
    static let shared = ApiClientGlobalImp()
    
    private init() {}
    
    func request(endpoint: Endpoint, completion: @escaping (Result<String,Error>) -> Void) {
        completion(.success("hello from Anywhere"))
    }
}
