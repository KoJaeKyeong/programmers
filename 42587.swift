//
//  42587.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/09.
//  프린터
//  https://programmers.co.kr/learn/courses/30/lessons/42587

import Foundation

func solution(priorities:[Int], location:Int) -> Int {
    var answer = 0
    var index = [Int]()
    var priorities = priorities
    let maxIndex = priorities.firstIndex(of: priorities.max()!)!
    var head = 0
    
    for i in priorities.indices {
        index.append(i)
    }
    
    for i in index {
        if i != maxIndex {
            head = index.remove(at: 0)
            index.append(head)
        } else {
            break
        }
    }
    
    for _ in 0..<index[0] {
        head = priorities.remove(at: 0)
        priorities.append(head)
    }
    
    while index.count > 0 || priorities.count > 0 {
        if priorities[0] == priorities.max()! {
            answer += 1
            if index[0] == location {
                break
            } else {
                index.remove(at: 0)
                priorities.remove(at: 0)
            }
        } else {
            head = priorities.remove(at: 0)
            priorities.append(head)
            
            head = index.remove(at: 0)
            index.append(head)
        }
    }
    
    return answer
}
