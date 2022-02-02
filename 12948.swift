//
//  12948.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/30.
//  핸드폰 번호 가리기
//  https://programmers.co.kr/learn/courses/30/lessons/12948

import Foundation

func maskPhoneNumber(_ phone_number:String) -> String {
    var phoneNumber = phone_number
    phoneNumber.replaceSubrange(phoneNumber.startIndex..<phoneNumber.index(phoneNumber.endIndex, offsetBy: -4), with: String(repeating: "*", count: phoneNumber.count - 4))
    return phoneNumber
}
