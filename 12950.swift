//
//  12950.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  행렬의 덧셈
//  https://programmers.co.kr/learn/courses/30/lessons/12950

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
    for i in arr1.indices {
        for j in arr1[i].indices {
            answer[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return answer
}
