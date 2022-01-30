//
//  12912.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  두 정수 사이의 합
//  https://programmers.co.kr/learn/courses/30/lessons/12912

import Foundation

func solution(a:Int, b:Int) -> Int64 {
    var answer: Int64 = 0
    if a < b {
        for i in a...b {
            answer += Int64(i)
        }
    } else {
        for i in b...a {
            answer += Int64(i)
        }
    }
    
    return answer
}
