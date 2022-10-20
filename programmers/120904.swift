//
//  120904.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/10/21.
//  숫자찾기
//  https://school.programmers.co.kr/learn/courses/30/lessons/120904

import Foundation

func solution120904(_ num:Int, _ k:Int) -> Int {
    return String(num).contains(String(k)) ? String(num).distance(
        from: String(num).startIndex,
        to: String(num).firstIndex(of: Character(String(k)))!
    ) + 1 : -1
}
