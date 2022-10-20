//
//  12954.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  x만큼 간격이 있는 n개의 숫자
//  https://programmers.co.kr/learn/courses/30/lessons/12954

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer = [Int64]()
    for i in 1...n {
        answer.append(Int64(x * i))
    }
    return answer
}
