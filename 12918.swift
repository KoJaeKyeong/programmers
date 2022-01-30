//
//  12918.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  문자열 다루기 기본
//  https://programmers.co.kr/learn/courses/30/lessons/12918

import Foundation

func solution(_ s:String) -> Bool {
    if s.count != 4 && s.count != 6 {
        return false
    }
    
    for i in s {
        if !i.isNumber {
            return false
        }
    }
    return true
}
