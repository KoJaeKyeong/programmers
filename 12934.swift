//
//  12934.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  정수 제곱근 판별
//  https://programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func isSquared(_ n:Int64) -> Int64 {
    if sqrt(Double(n)).isEqual(to: Double(Int(sqrt(Double(n))))) {
        return Int64(pow(sqrt(Double(n)) + 1, 2))
    }
    return -1
}
