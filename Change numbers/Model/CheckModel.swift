//
//  IsHundred.swift
//  Change numbers
//
//  Created by Леонид Лукашевич on 17.02.2021.
//

import Foundation

let array = ArrayModel()

class CheckHundreds {
    var checked: Bool = false
    var isHundred: Bool = false
    
    func checkHundreds(_ word: [Character]) -> Int? {
        for hundred in array.hundreds {
            if hundred.key.lowercased() == String(word).lowercased() {
                self.isHundred = true
                self.checked = true
                return hundred.value
            }
        }
        
        // ОШИБКА
        return nil
    }
    
    func checkUnitHundreds(_ word: [Character]) -> Int? {
        for hundred in array.unitHundreds {
            if hundred.key.lowercased() == String(word).lowercased() {
                self.checked = true
                return hundred.value * 100
            }
        }
        
        // ОШИБКА
        return nil
    }
}

class CheckTens {
    var checked: Bool = false
    var isUniqueTen: Bool = false
    var uniqueChecked: Bool = false
    
    func checkUniqueTens(word: [Character]) -> Int? {
        for uniqueTen in array.uniqueTens {
            if uniqueTen.key.lowercased() == String(word).lowercased() {
                self.isUniqueTen = true
                self.checked = true
                return uniqueTen.value
            }
        }
        uniqueChecked = true
        
        // ОШИБКА
        return nil
    }
    
    func checkTens(previousWord word: [Character]) -> Int? {
        for ten in array.tens {
            if ten.key.lowercased() == String(word).lowercased() {
                self.checked = true
                return ten.value
            }
        }
        
        // ОШИБКА
        return nil
    }
}

class CheckUnits {
    var checked: Bool = false
    
    func checkUnits(previousWord word: [Character]) -> Int? {
        for unit in array.units {
            if unit.key.lowercased() == String(word).lowercased() {
                self.checked = true
                return unit.value
            }
        }
        
        // ОШИБКА
        return nil
    }
}
