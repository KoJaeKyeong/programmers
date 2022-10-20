//
//  42586.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/29.
//  기능개발
//  https://programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]()
    var day = [Int]()
    var count = 1
    for i in progresses.indices {
        if speeds[i] > 1 {
            day.append((100 - progresses[i]) / speeds[i] + 1)
        } else if speeds[i] == 1 {
            day.append((100 - progresses[i]) / speeds[i])
        }
    }
    var compare = day.removeFirst()
    while day.count != 0 {
        if compare >= day[0] {
            count += 1
            day.removeFirst()
        } else {
            answer.append(count)
            count = 1
            compare = day.removeFirst()
        }
    }
    answer.append(count)

    return answer
}
