//
//  120837.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/10/21.
//  개미군단
//  https://school.programmers.co.kr/learn/courses/30/lessons/120837

import Foundation

func solution120837(_ hp:Int) -> Int {
    let general = hp / 5
    let soldier = hp % 5 / 3
    let ergate = hp % 5 % 3

    return general + soldier + ergate
}
