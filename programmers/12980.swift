//
//  12980.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/13.
//  점프와 순간이동
//  https://programmers.co.kr/learn/courses/30/lessons/12980

import Foundation

func solution12980(_ n:Int) -> Int {
    var n = n
    var answer = 0
    
    while n > 0 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n -= 1
            answer += 1
        }
    }
    
    return answer
}
