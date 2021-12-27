//
//  12981.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/27.
//  영어 끝말잇기
//  https://programmers.co.kr/learn/courses/30/lessons/12981

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var newWords = [String]()
    var answer = [Int]()
    
    for i in 0..<words.count {
        if newWords.contains(words[i]) {
            answer.append(contentsOf: [i % n + 1, i / n + 1])
            break
        }
        
        if i > 0 {
            if words[i][words[i].startIndex] != words[i-1][words[i-1].index(before: words[i-1].endIndex)] {
                answer.append(contentsOf: [i % n + 1, i / n + 1])
                break
            }
        }
        
        newWords.append(words[i])
    }
    
    if answer.isEmpty {
        answer.append(contentsOf: [0, 0])
    }

    return answer
}
