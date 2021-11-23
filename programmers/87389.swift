//
//  87389.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/24.
//

import Foundation

func solution(_ n: Int) -> Int {
    var arr = Array<Int>()
    for i in 1..<n {
        if n % i == 1 {
            arr.append(i)
        }
    }

    guard let min = arr.min() else { return Int() }
    return min
}
