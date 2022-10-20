//
//  60058.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  괄호 변환
//  https://programmers.co.kr/learn/courses/30/lessons/60058

import Foundation

func solution(_ inputString:String) -> String {
    return answer(w: inputString)
}

func answer(w: String) -> String {
    func makeCorrectString(w: String) -> String {
        var u = ""
        var v = ""
        var openCount = 0
        var closeCount = 0
        let parenthesesArray = Array(w)
        
        for i in 0..<parenthesesArray.count {
            if parenthesesArray[i] == "(" {
                openCount += 1
            } else if parenthesesArray[i] == ")" {
                closeCount += 1
            }
            
            if openCount > 0 && closeCount > 0 && openCount == closeCount {
                u = String(parenthesesArray[0...i])
                if i+1 < w.count {
                    v = String(parenthesesArray[i+1..<w.count])
                }
                
                if u.first == "(" {
                    return u + makeCorrectString(w: v)
                } else {
                    u.removeFirst()
                    u.removeLast()
                    return "(" + makeCorrectString(w: v) + ")" + u.map { $0 == "(" ? ")" : "("}.joined()
                }
            }
        }
        
        return ""
    }
    
    return makeCorrectString(w: w)
}
