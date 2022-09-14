//
//  LoadDataRepository.swift
//  
//
//  Created by Javier Cueto on 13/09/22.
//


public protocol LoadDataRepository {
    func fetchData(completion: @escaping (String) -> Void)
}
