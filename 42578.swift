//
//  42578.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/27.
//  위장
//  https://programmers.co.kr/learn/courses/30/lessons/42578

import Foundation

func solution(clothes:[[String]]) -> Int {
    var answer = 1
    var dic = [String: [String]]()
    
    for i in clothes {
        if dic.keys.contains(i[1]) {
            dic[i[1]]?.append(i[0])
        } else {
            dic[i[1]] = [i[0]]
        }
    }
    
    for (_, value) in dic {
        answer *= value.count + 1
    }
    
    return answer - 1
}
