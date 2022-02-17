//
//  12910.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  나누어 떨어지는 숫자 배열
//  https://programmers.co.kr/learn/courses/30/lessons/12910

import Foundation

func solution(arr:[Int], divisor:Int) -> [Int] {
    return arr.filter { $0 % divisor == 0 }.isEmpty ? [-1] : arr.filter { $0 % divisor == 0 }.sorted()
}
