//
//  72412.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/12.
//  순위 검색
//  https://programmers.co.kr/learn/courses/30/lessons/72412

import Foundation
func solution(info:[String], _ query:[String]) -> [Int] {
    var counts = [Int]()
    var applicants = [[String]]()
    info.forEach { applicants.append($0.components(separatedBy: " ")) }
    applicants.sort{Int($0[4])! < Int($1[4])!}
    var caseDic = [String:[Int]]()
    // 모든 경우 체크
    for applicant in applicants {
        let allCases = ["- and - and - and -",
                   "- and - and - and \(applicant[3])",
                   "- and - and \(applicant[2]) and -",
                   "- and \(applicant[1]) and - and -",
                   "\(applicant[0]) and - and - and -",
                   "\(applicant[0]) and - and - and \(applicant[3])",
                   "\(applicant[0]) and \(applicant[1]) and - and -",
                   "\(applicant[0]) and - and \(applicant[2]) and -",
                   "- and \(applicant[1]) and \(applicant[2]) and -",
                   "- and \(applicant[1]) and - and \(applicant[3])",
                   "- and - and \(applicant[2]) and \(applicant[3])",
                   "\(applicant[0]) and \(applicant[1]) and \(applicant[2]) and -",
                   "\(applicant[0]) and \(applicant[2]) and - and \(applicant[3])",
                   "\(applicant[0]) and - and \(applicant[2]) and \(applicant[3])",
                   "- and \(applicant[1]) and \(applicant[2]) and \(applicant[3])",
                   "\(applicant[0]) and \(applicant[2]) and \(applicant[2]) and \(applicant[3])"]
        for i in 0..<allCases.count {
            caseDic[allCases[i]] = caseDic[allCases[i]] == nil ? [Int(applicant[4])!] : caseDic[allCases[i]]! + [Int(applicant[4])!]
        }
    }
    // 쿼리와 딕셔너리 키 비교
    for q in query {
        var split = q.components(separatedBy: " ")
        let score = Int(split.removeLast())!
        let join = String(split.joined(separator: " "))
        if caseDic[join] == nil {
            counts.append(0)
        } else {
            counts.append(binarySearch(caseDic[join]!, score))
        }
    }
    return counts
}
// 이진 탐색
func binarySearch(_ scores: [Int],_ queryScore: Int) -> Int {
    if scores.count == 1 { return scores[0] >= queryScore ? 1 : 0 }
    if scores.first! >= queryScore {return scores.count }
    if queryScore > scores.last! {return 0 }
    var left = 0
    var right = scores.count
    while left < right {
        let middle = (left + right) / 2
        if scores[middle] >= queryScore {
           right = middle
        } else {
            left =  middle + 1
        }
    }
    return scores.count - left
}
