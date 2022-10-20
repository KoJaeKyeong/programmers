//
//  77484.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/13.
//  로또의 최고 순위와 최저 순위
//  https://programmers.co.kr/learn/courses/30/lessons/77484

import Foundation

func solution(lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var countMax = 0
    var countMin = 0
    let dic = [6: 1, 5: 2, 4: 3, 3: 4, 2: 5, 1: 6, 0: 6]
    var answer = [Int]()
    
    for i in 0..<6 {
        if lottos[i] == 0 {
            countMax += 1
            continue
        }
        for j in 0..<6 {
            if lottos[i] == win_nums[j] {
                countMax += 1
                countMin += 1
                continue
            }
        }
    }

    answer.append(contentsOf: [dic[countMax]!, dic[countMin]!])
    
    return answer
}
