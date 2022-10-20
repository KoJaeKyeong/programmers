//
//  12928.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  약수의 합
//  https://programmers.co.kr/learn/courses/30/lessons/12928

import Foundation

func sumOfDivisor(_ n:Int) -> Int {
    var answer = [Int]()
    
    if n == 0 {
        return 0
    }
    
    for i in 1...n {
        if n % i == 0 {
            answer.append(i)
        }
    }
    return answer.reduce(0, +)
}
