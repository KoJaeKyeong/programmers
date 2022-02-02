//
//  12933.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  정수 내림차순으로 배치하기
//  https://programmers.co.kr/learn/courses/30/lessons/12933

import Foundation

func sortByDescend(_ n:Int64) -> Int64 {
    let temp = String(n).map { Int(String($0))! }.sorted(by: >)
    let answer = Int64(temp.map { String($0) }.joined())
    return answer!
}
