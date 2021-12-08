//
//  main.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/11.
//

import Foundation

func solution(_ s:String) -> Int {
    let dictionary = ["0": "zero", "1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
    var answer: String = s
    for (key, value) in dictionary {
        if s.contains(value) {
            answer = answer.replacingOccurrences(of: value, with: key)
        }
    }
    return Int(answer) ?? 0
}

