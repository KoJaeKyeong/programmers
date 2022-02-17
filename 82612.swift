//
//  82612.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  부족한 금액 계산하기
//  https://programmers.co.kr/learn/courses/30/lessons/82612

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice = 0
    for i in 1...count {
        totalPrice += price * i
    }
    return Int64(totalPrice - money > 0 ? totalPrice - money : 0)
}
