//
//  77884.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  약수의 개수와 덧셈
//  https://programmers.co.kr/learn/courses/30/lessons/77884

import Foundation

func countOfDevisorAndAddition(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        var temp = [Int]()
        for j in 1...i {
            if i % j == 0 {
                temp.append(j)
            }
        }
        
        if temp.count % 2 == 0 {
            answer += i
        } else {
            answer -= i
        }
    }
    return answer
}
