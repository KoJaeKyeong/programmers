//
//  12947.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  하샤드 수
//  https://programmers.co.kr/learn/courses/30/lessons/12947

import Foundation

func solution(_ x:Int) -> Bool {
    let sum = String(x).map { Int(String($0))! }.reduce(0, +)
    return x % sum == 0 ? true : false
}
