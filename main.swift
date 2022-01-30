//
//  main.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/29.
//  

import Foundation

func isHarshad(_ x:Int) -> Bool {
    let sum = String(x).map { Int(String($0))! }.reduce(0, +)
    return x % sum == 0 ? true : false
}
