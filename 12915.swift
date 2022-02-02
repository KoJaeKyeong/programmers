//
//  12915.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  문자열 내 마음대로 정렬하기
//  https://programmers.co.kr/learn/courses/30/lessons/12915

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted { $0[$0.index($0.startIndex, offsetBy: n)] == $1[$1.index($1.startIndex, offsetBy: n)] ?
        $0 < $1 : $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)]
    }
}
