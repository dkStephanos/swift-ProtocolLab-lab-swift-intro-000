//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault : ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    
    func allowEntryWithPassword(_ password : [Int]) -> Bool
}

extension BankVault {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        //If password is empty or above ten chars, false
        if password.isEmpty || password.count > 10 {
            return false
        }
        //Checks that each digit in password is divisible by to
        //else returns false
        var counter = 2
        for num in password {
            if counter % 2 == 0 {
                if num % 2 == 1 {
                    return false
                }
            }
            counter += 1;
        }
        //If we get this far, return true
        return true
    }
}



