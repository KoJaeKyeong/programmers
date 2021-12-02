//
//  42747.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/01.
//  H-Index
//  https://programmers.co.kr/learn/courses/30/lessons/42747#fnref1

import Foundation

func solution(_ citations:[Int]) -> Int {
    var citations = citations
    var hIndex = 0
    citations.sort()
    citations.reverse()
    for i in citations.indices {
        if citations[i] > hIndex {
            hIndex += 1
        }
    }
    return hIndex
}
