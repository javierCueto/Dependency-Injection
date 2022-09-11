//
//  DependencyExamples.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 11/09/22.
//

protocol Dependency1 {
    func load()
}

struct Dependency1Imp: Dependency1 {
    func load() {
        
    }
}

protocol Dependency2 {
    func load()
}
struct Dependency2Imp: Dependency2 {
    func load() {
        
    }
}

protocol Dependency3 {
    func load()
}

struct Dependency3Imp: Dependency3 {
    func load() {
        
    }
}

protocol Dependency4 {
    func load()
}

struct Dependency4Imp: Dependency4 {
    func load() {
        
    }
}

protocol Dependency5 {
    func load()
}

struct Dependency5Imp: Dependency5  {
    func load() {
        
    }
}
