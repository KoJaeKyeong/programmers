//
//  12944.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  평균 구하기
//  https://programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func average(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
