//
//  72410.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  신규 아이디 추천
//  https://programmers.co.kr/learn/courses/30/lessons/72410

import Foundation

func recommendNewId(_ new_id:String) -> String {
    var newId = new_id
    func makeLowerCase() {
        newId = newId.lowercased()
    }

    func removeSpecificChar() {
        newId = newId.filter { $0.isLowercase || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    }
    
    func doubleHotPointToSingle() {
        while newId.contains("..") {
            newId = newId.replacingOccurrences(of: "..", with: ".")
        }
    }
    
    func removeFirstLastHotPoint() {
        newId = newId.trimmingCharacters(in: ["."])
    }
    
    func checkIsEmpty() {
        if newId.isEmpty {
            newId += "a"
        }
    }
    
    func cuttingLongId() {
        if newId.count >= 16 {
            newId = String(newId[newId.startIndex..<newId.index(newId.startIndex, offsetBy: 15)])
            
            if newId.last! == "." {
                newId.removeLast()
            }
        }
    }
    
    func makeLengthThree() {
        if newId.count <= 2 {
            while newId.count < 3 {
                newId += String(newId.last!)
            }
        }
    }
    
    makeLowerCase()
    removeSpecificChar()
    doubleHotPointToSingle()
    removeFirstLastHotPoint()
    checkIsEmpty()
    cuttingLongId()
    makeLengthThree()
    
    return newId
}


func isPrime(num: Int) -> Bool {
    if num < 2 {
        return false
    } else if num > 1 {
        for i in 2..<Int(sqrt(Double(num)))+1 {
            if num % i == 0 {
                return false
            }
        }
    }
                         
    return true
}
