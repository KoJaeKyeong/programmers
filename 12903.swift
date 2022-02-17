//
//  12903.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  가운데 글자 가져오기
//  https://programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func printMiddle(_ s:String) -> String {
    return s.count % 2 == 1 ? String(s[s.index(s.startIndex, offsetBy: s.count / 2)]) : String(s[s.index(s.startIndex, offsetBy: s.count / 2 - 1)...s.index(s.startIndex, offsetBy: s.count / 2)])
}
