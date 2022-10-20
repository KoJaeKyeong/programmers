//
//  62048.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/06.
//  멀쩡한 사각형
//  https://programmers.co.kr/learn/courses/30/lessons/62048

import Foundation

func solution62048(_ w:Int,_ h:Int) -> Int64{
    func gcd(a: Int, b: Int) -> Int {
        let mod = a % b
        if mod == 0 {
            return min(a, b)
        }
        return gcd(a: b, b: mod)
    }
    
    return Int64(w * h - (w + h - gcd(a: w, b: h)))
}
