//
//  12901.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  2016년
//  https://programmers.co.kr/learn/courses/30/lessons/12901

import Foundation

func dayOfYear(_ a:Int, _ b:Int) -> String {
    var a = a - 1
    var dayCount = 0
    let dayOfMonth = [1: 31, 2: 29, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30]
    let day = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    
    while a > 0 {
        dayCount += dayOfMonth[a]!
        a -= 1
    }
    dayCount += b
    return day[dayCount % 7]
}
