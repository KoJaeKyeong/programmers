//
//  12917.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/02.
//  문자열 내림차순으로 배치하기
//  https://programmers.co.kr/learn/courses/30/lessons/12917

import Foundation

func sortStringByDescend(_ s:String) -> String {
    return String(s.sorted(by: >))
}
