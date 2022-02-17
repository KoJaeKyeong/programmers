//
//  12985.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/06.
//  예상 대진표
//  https://programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution12985(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var a = a
    var b = b
    var count = 0
    
    while a != b {
        if a % 2 == 0 {
            a = a / 2
        } else {
            a = (a + 1) / 2
        }
        
        if b % 2 == 0 {
            b = b / 2
        } else {
            b = (b + 1) / 2
        }
        
        print(a , b)
        count += 1
    }
    return count
}
