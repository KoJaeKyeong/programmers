//
//  68645.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/13.
//  삼각달팽이
//  https://programmers.co.kr/learn/courses/30/lessons/68645

import Foundation

func solution68645(_ n:Int) -> [Int] {
    enum Direction {
        case up, down, right
    }
    
    var snail = [[Int]]()
    var row = -1
    var col = 0
    var oneLine = n
    var num = 1
    var dir: Direction = .down
    
    for i in 1...n {
        snail.append(Array(repeating: 0, count: i))
    }
    
    while oneLine > 0 {
        switch dir {
        case .down:
            for _ in 0..<oneLine {
                row += 1
                snail[row][col] = num
                num += 1
            }
            oneLine -= 1
            dir = .right
        case .right:
            for _ in 0..<oneLine {
                col += 1
                snail[row][col] = num
                num += 1
            }
            oneLine -= 1
            dir = .up
        case .up:
            for _ in 0..<oneLine {
                row -= 1
                col -= 1
                snail[row][col] = num
                num += 1
            }
            oneLine -= 1
            dir = .down
        }
    }
    
    return snail.reduce([], +)
}
