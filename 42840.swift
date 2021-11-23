//
//  42840.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/24.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var first = [1, 2, 3, 4, 5]
    var second = [2, 1, 2, 3, 2, 4, 2, 5]
    var third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var firstScore = 0
    var secondScore = 0
    var thirdScore = 0
    var scoreArray = Array<Int>()
    var returnArray = Array<Int>()

    while answers.count > first.count {
        first += first
    }
    while answers.count > second.count {
        second += second
    }
    while answers.count > third.count {
        third += third
    }

    for i in 0..<answers.count {
        if answers[i] == first[i] {
            firstScore += 1
        }
        if answers[i] == second[i] {
            secondScore += 1
        }
        if answers[i] == third[i] {
            thirdScore += 1
        }
    }
    scoreArray.append(contentsOf: [firstScore, secondScore, thirdScore])
    if scoreArray.max() == firstScore {
        returnArray.append(1)
    }
    if scoreArray.max() == secondScore {
        returnArray.append(2)
    }
    if scoreArray.max() == thirdScore {
        returnArray.append(3)
    }
    return returnArray
}
