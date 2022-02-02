//
//  12935.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  제일 작은 수 제거하기
//  https://programmers.co.kr/learn/courses/30/lessons/12935

import Foundation

func removeSmallest(_ arr:[Int]) -> [Int] {
    var arr = arr
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    return arr.isEmpty ? [-1] : arr
}
