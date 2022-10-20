//
//  120891.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/10/21.
//  369게임
//  https://school.programmers.co.kr/learn/courses/30/lessons/120891

import Foundation

func solution120891(_ order:Int) -> Int {
    return String(order).filter { (Int(String($0))! != 0) && (Int(String($0))! % 3 == 0) }.count
}
