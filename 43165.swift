//
//  File.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/24.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    return dfs(numbers: numbers, target: target, level: 0, sum: 0)
}

func dfs(numbers: [Int], target: Int, level: Int, sum: Int) -> Int {
    var answer = 0
    
    if level == numbers.count {
        if sum == target {
            return 1
        } else {
            return 0
        }
    }
    
    answer += dfs(numbers: numbers, target: target, level: level + 1, sum: sum + numbers[level])
    answer += dfs(numbers: numbers, target: target, level: level + 1, sum: sum - numbers[level])
    
    return answer
}
