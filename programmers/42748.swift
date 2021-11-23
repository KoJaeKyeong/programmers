//
//  File.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/24.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var splitedArray = Array<Int>()
    var answerArray = Array<Int>()
    for i in 0..<commands.count {
        splitedArray = array[commands[i][0]-1...commands[i][1]-1].map{ Int($0) }.sorted()
        answerArray.append(splitedArray[commands[i][2]-1])
    }
    print(answerArray)
    return answerArray
}
