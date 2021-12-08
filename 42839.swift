//
//  42839.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/08.
//  소수 찾기
//  https://programmers.co.kr/learn/courses/30/lessons/42839

import Foundation

func solution(d numbers:String) -> Int {
    var answer = 0
    let numbers = numbers.map { String($0) }
    var permutedArray = [[String]]()
    for i in 1...numbers.count {
        permutedArray += permute(numbers: numbers, target: i)
    }
    
    let arrangedSet = Set(permutedArray.map { $0.map { $0 }.reduce("",+) }.map { Int($0)! })
    
    for j in arrangedSet {
        answer += isPrime(num: j)
    }
    
    return answer
}

func permute(numbers: [String], target: Int) -> [[String]] {
    var result = [[String]]()
    func getPermutation(permute: [String], target: Int, result: inout [[String]], index: Int) {
        if index == target {
            result.append(Array(permute[0..<index]))
            return
        }
        
        var permute = permute
        
        for i in index..<permute.count {
            permute.swapAt(index, i)
            getPermutation(permute: permute, target: target, result: &result, index: index + 1)
            permute.swapAt(index, i)
        }
    }
    getPermutation(permute: numbers, target: target, result: &result, index: 0)
    return result
}

func isPrime(num: Int) -> Int {
    if num <= 1 {
        return 0
    }
    
    if num % 2 == 0 {
        return num == 2 ? 1 : 0
    }
    
    let max = Int(sqrt(Double(num)))
    for i in stride(from: 3, through: max, by: 2) {
        if num % i == 0 {
            return 0
        }
    }
    
    return 1
}
