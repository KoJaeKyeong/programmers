//
//  12919.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  서울에서 김서방 찾기
//  https://programmers.co.kr/learn/courses/30/lessons/12919

import Foundation

func solution(_ seoul:[String]) -> String {
    for (index, name) in seoul.enumerated() {
        if name == "Kim" {
            return "김서방은 \(index)에 있다"
        }
    }
    
    return ""
}
