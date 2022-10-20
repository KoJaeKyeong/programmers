//
//  12940.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/01.
//  최대공약수와 최소공배수
//  https://programmers.co.kr/learn/courses/30/lessons/12940

import Foundation

func findGcdLcm(_ n:Int, _ m:Int) -> [Int] {
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

    return [gcd(a: n, b: m), lcm(a: n, b: m)]
}
