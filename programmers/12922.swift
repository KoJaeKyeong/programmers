//
//  12922.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  수박수박수박수박수박수?
//  https://programmers.co.kr/learn/courses/30/lessons/12922

import Foundation

func watermelon(_ n:Int) -> String {
    var answer = ""
    for i in 1...n {
        if i % 2 == 0 {
            answer += "박"
        } else {
            answer += "수"
        }
    }
    return answer
}
