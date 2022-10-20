//
//  12921.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  소수 찾기
//  https://programmers.co.kr/learn/courses/30/lessons/12921

import Foundation

func countOfPrimeNumber(_ n:Int) -> Int {
    var count = 0
    for i in 1...n {
        if isPrime(i) == true {
            count += 1
        }
    }
    return count
}

func isPrime(_ num: Int) -> Bool {
    if num <= 1 {
        return false
    } else if num > 1 {
        for i in 2..<Int(sqrt(Double(num))) + 1 {
            if num % i == 0 {
                return false
            }
        }
    }
                         
    return true
}
