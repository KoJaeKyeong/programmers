//
//  42579.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/14.
//  베스트앨범
//  https://programmers.co.kr/learn/courses/30/lessons/42579

import Foundation

func solution(genres:[String], _ plays:[Int]) -> [Int] {
    var answer = [Int]()
    var sumOfGenre = [String : Int]()
    var dic = [Int : [Any]]()
    var byGenre = [Int : Int]()
    var swapKeyValue = [Int : String]()
    
    for i in genres.indices {
        if sumOfGenre.keys.contains(genres[i]) {
            sumOfGenre[genres[i]]! += plays[i]
        } else {
            sumOfGenre[genres[i]] = plays[i]
        }
        dic[i] = [genres[i], plays[i]]
    }
    
    for (key, value) in sumOfGenre {
        swapKeyValue[value] = key
    }
        
    while sumOfGenre.count > 0 {
        for i in genres.indices {
            if sumOfGenre[genres[i]] == sumOfGenre.values.max()! && genres[i] == (dic[i]![0] as! Dictionary<String, Int>.Keys.Element) {
                byGenre[i] = (dic[i]![1] as! Int)
            }
        }

        var sortedByGenre = byGenre.sorted { $0.0 < $1.0 }.sorted { $0.1 > $1.1 }
        if sortedByGenre.count >= 2 {
            answer.append(sortedByGenre.removeFirst().key)
            answer.append(sortedByGenre.removeFirst().key)
        } else {
            answer.append(sortedByGenre.removeFirst().key)
        }
        
        byGenre = [:]
        
        sumOfGenre.removeValue(forKey: swapKeyValue[swapKeyValue.keys.max()!]!)
        swapKeyValue.removeValue(forKey: swapKeyValue.keys.max()!)
    }
    
    return answer
}
