//
//  main.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/29.
//  

import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var splitedInfo = [[String]]()
    var splitedQuery = [[String]]()
    var answer = [Int]()
    var a = ""

    for info in info {
        splitedInfo.append(info.components(separatedBy: " "))
    }
    
    for query in query {
        splitedQuery.append(query.components(separatedBy: "and ").joined(separator: "").components(separatedBy: " "))
    }
    
    for i in splitedInfo.indices {
        print(i)
    }
    
    return []
}

solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"])
