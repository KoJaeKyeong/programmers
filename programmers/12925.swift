//
//  12925.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  문자열을 정수로 바꾸기
//  https://programmers.co.kr/learn/courses/30/lessons/12925

import Foundation

func stringToInteger(_ s:String) -> Int {
    return s[s.startIndex] == "-" ? Int(s[s.index(s.startIndex, offsetBy: 1)...])! * -1 : Int(s)!
}
