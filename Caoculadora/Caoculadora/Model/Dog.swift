//
//  Dog.swift
//  Caoculadora
//
//  Created by Alessandra Pereira on 26/10/20.
//

// MARK: - Dog
struct Dog {
    let years: Int
    let months: Int
    let size: Size
    
    func humanAge() -> Int {
        let humanYears = years * size.rawValue
        let humanMonths = months * size.rawValue/12
        
        return humanYears + humanMonths
    }
}
