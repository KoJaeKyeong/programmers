//
//  12953.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/07.
//  N개의 최소공배수
//  https://programmers.co.kr/learn/courses/30/lessons/12953?language=swift

import Foundation

func solution(arr:[Int]) -> Int {
    var answer = arr[0]
    for i in 1..<arr.count {
        answer = lcm(a: answer, b: arr[i])
    }
    return answer
}

func gcd(a: Int, b: Int) -> Int {
    let mod = a % b
    if mod == 0 {
        return min(a, b)
    }
    return gcd(a: b, b: mod)
}

func lcm(a: Int, b: Int) -> Int {
    return a * b / gcd(a: a, b: b)
}
