//
//  12943.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/01.
//  콜라츠 추측
//  https://programmers.co.kr/learn/courses/30/lessons/12943

import Foundation

func collatz(_ num:Int) -> Int {
    var num = num
    var count = 0
    
    while num != 1 {
        if num % 2 == 0 {
            num /= 2
        } else {
            num = num * 3 + 1
        }
        count += 1
        
        if count == 500 {
            return -1
        }
    }
    
    return count
}
