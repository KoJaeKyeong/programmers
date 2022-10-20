//
//  70128.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  내적
//  https://programmers.co.kr/learn/courses/30/lessons/70128

import Foundation

func dotProduct(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).map { $0 * $1 }.reduce(0, +)
}
