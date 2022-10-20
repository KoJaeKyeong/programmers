//
//  12931.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/01.
//  자릿수 더하기
//  https://programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func sumOfPlaceValue(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}
