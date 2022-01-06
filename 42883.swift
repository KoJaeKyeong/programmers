//
//  42883.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/06.
//  큰 수 만들기
//  https://programmers.co.kr/learn/courses/30/lessons/42883

import Foundation

func solution(number:String, k:Int) -> String {
    let numbers = number.map { Int(String($0))! }
    var k = k
    var i = 0
    var answer = [Int]()

    while k > 0 && i < numbers.count {
        if answer.isEmpty {
            answer.append(numbers[i])
            i += 1
            continue
        }
        
        if answer.last! < numbers[i] {
            answer.removeLast()
            k -= 1
            continue
        }
        
        answer.append(numbers[i])
        i += 1
    }

    if k == 0 {
        answer.append(contentsOf: numbers[i...])
    }
    
    if i == numbers.count {
        answer = Array(answer[0..<numbers.count - k])
    }
    
    return answer.map { String($0) }.reduce("", +)
}
