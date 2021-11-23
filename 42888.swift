//
//  42888.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/11/24.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    var answer = [String]()
    var dic = [String : String]()
    var components = [String]()

    for i in record {
        components = i.components(separatedBy: " ")
        if components.count == 3 {
            dic[components[1]] = components[2]
        }
    }

    for j in record {
        components = j.components(separatedBy: " ")

        if let nickname = dic[components[1]] {
            if components[0] == "Enter" {
                answer.append("\(nickname)님이 들어왔습니다.")
            } else if components[0] == "Leave" {
                answer.append("\(nickname)님이 나갔습니다.")
            }
        }
    }

    return answer
}
