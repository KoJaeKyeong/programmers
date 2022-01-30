//
//  42627.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/23.
//  디스크 컨트롤러
//  https://programmers.co.kr/learn/courses/30/lessons/42627

import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    var currentTime = 0
    var totalTime = 0
    var sortedJob = jobs.sorted { $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0] }
    sortedJob.sort { $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]}
    
    while sortedJob.count > 0 {
        for i in 0..<sortedJob.count {
            if sortedJob[i][0] <= currentTime {
                currentTime += sortedJob[i][1]
                totalTime += currentTime - sortedJob[i][0]
                sortedJob.remove(at: i)
                break
            }
            
            if i == sortedJob.count - 1 {
                currentTime += 1
            }
            
        }
    }
    
    return totalTime / jobs.count
}

