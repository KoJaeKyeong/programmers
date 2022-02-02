//
//  12932.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  자연수 뒤집어 배열로 만들기
//  https://programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

func makeReversedArray(_ n:Int64) -> [Int] {
    return Array(String(n).map { Int(String($0))! }.reversed())
}
