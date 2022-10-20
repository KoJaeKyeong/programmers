//
//  12951.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/07.
//  JadenCase 문자열 만들기
//  https://programmers.co.kr/learn/courses/30/lessons/12951?language=swift

import Foundation

func solution(str:String) -> String {
    let strArr = str.components(separatedBy: " ")
    var answer = [String]()
    for str in strArr {
        if str == "" {
            answer.append("")
        } else {
            if !str[str.startIndex].isLetter {
                answer.append(str.lowercased())
            } else {
                answer.append(str.capitalized)
            }
        }
    }
    
    return answer.joined(separator: " ")
}
