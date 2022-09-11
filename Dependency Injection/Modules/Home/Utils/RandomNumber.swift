//
//  RandomNumber.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

protocol RandomNumber {
    func random(initNumber: Int, endNumber: Int) -> Int
}

struct RandomNumberImp: RandomNumber {
    
    func random(initNumber: Int, endNumber: Int) -> Int {
        return Int.random(in: initNumber...endNumber)
    }
}
