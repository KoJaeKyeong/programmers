//
//  43162.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  네트워크
//  https://programmers.co.kr/learn/courses/30/lessons/43162

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited = Array(repeating: false, count: n)
    var result = 0
 
    func dfs(_ computer: Int) {
        visited[computer] = true
        print(visited)
        for i in 0..<n {
            if computers[computer][i] == 1 && visited[i] == false {
                dfs(i)
            }
        }
    }
 
    for i in 0..<n {
        if visited[i] == false {
            result += 1
            dfs(i)
        }
    }
 
    return result
}
