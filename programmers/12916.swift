//
//  12916.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/02/03.
//  문자열 내 p와 y의 개수
//  https://programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func pyCount(_ s:String) -> Bool {
    var count = 0
    
    for str in s {
        if str == "p" || str == "P" {
            count += 1
        } else if str == "y" || str == "Y" {
            count -= 1
        }
    }
    
    return count == 0 ? true : false
}
