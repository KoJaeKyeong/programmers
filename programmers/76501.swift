//
//  76501.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/03/19.
//  음양더하기
//  https://programmers.co.kr/learn/courses/30/lessons/76501

import Foundation

func solution76501(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var answer = 0
    
    for i in 0..<absolutes.count {
        if signs[i] == true {
            answer += absolutes[i]
        } else {
            answer -= absolutes[i]
        }
    }
    
    return answer
}
