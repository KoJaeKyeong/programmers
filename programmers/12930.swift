//
//  12930.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  이상한 문자 만들기
//  https://programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func strangeString(_ s:String) -> String {
    let sArr = s.components(separatedBy: " ")
    var answer = ""
    for str in sArr {
        for (index, word) in str.enumerated() {
            if index % 2 == 0 {
                answer += word.uppercased()
            } else {
                answer += word.lowercased()
            }
        }
        
        if answer.count == s.count {
            break
        }
        
        answer += " "
    }
    
    return answer
}
