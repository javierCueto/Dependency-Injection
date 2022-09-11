//
//  Endpoint.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

enum Endpoint {
    case list
    case home
}

extension Endpoint{
    var path: String {
        switch self {
        case .list:
            return "https://fake.com/list"
        case .home:
            return "https://fake.com/home"
        }
    }
}
