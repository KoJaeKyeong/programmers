//
//  12926.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/03/17.
//  시저암호
//  https://programmers.co.kr/learn/courses/30/lessons/12926

import Foundation

func solution12926(_ s:String, _ n:Int) -> String {
    let lowerCaseRange = 97...122
    let upperCaseRange = 65...90
    
    var answer = ""
    
    for char in s {
        let unicode = Int(UnicodeScalar("\(char)")!.value)
        if lowerCaseRange.contains(unicode) {
            if unicode + n > lowerCaseRange.last! {
                answer += String(UnicodeScalar(unicode + n - lowerCaseRange.last! + lowerCaseRange.first! - 1)!)
            } else {
                answer += String(UnicodeScalar(unicode + n)!)
            }
        } else if upperCaseRange.contains(unicode) {
            if unicode + n > upperCaseRange.last! {
                answer += String(UnicodeScalar(unicode + n - upperCaseRange.last! + upperCaseRange.first! - 1)!)
            } else {
                answer += String(UnicodeScalar(unicode + n)!)
            }
        } else {
            answer += " "
        }
    }
    
    return answer
}
