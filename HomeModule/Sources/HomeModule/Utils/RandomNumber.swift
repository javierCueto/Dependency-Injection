//
//  RandomNumber.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

public protocol RandomNumber {
    func random(initNumber: Int, endNumber: Int) -> Int
}

public struct RandomNumberImp: RandomNumber {
    
    public init() {}
    
    public func random(initNumber: Int, endNumber: Int) -> Int {
        return Int.random(in: initNumber...endNumber)
    }
}
