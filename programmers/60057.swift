//
//  60057.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/28.
//  문자열 압축
//  https://programmers.co.kr/learn/courses/30/lessons/60057
import Foundation

func solution(s:String) -> Int {
    var sArr = [String]()
    var answer = [Int]()
    
    if s.count == 1 {
        return 1
    }
    func getSubString(string: String, num: Int) {
        var str = string
        if str.count == 0 {
            return
        } else {
            if str.count < num {
                sArr.append(String(str[str.startIndex..<str.endIndex]))
            } else {
                sArr.append(String(str[str.startIndex..<str.index(str.startIndex, offsetBy: num)]))
                str.removeSubrange(str.startIndex..<str.index(str.startIndex, offsetBy: num))
                getSubString(string: str, num: num)
            }
        }
    }
    for num in 1...s.count/2 {
        var count = 1
        var temp = ""
        var result = ""
        getSubString(string: s, num: num)
        for str in sArr {
            if temp == "" {
                temp = str
            } else {
                if temp == str {
                    count += 1
                } else {
                    if count == 1 {
                        result += temp
                    } else {
                        result += String(count) + temp
                    }
                    temp = str
                    count = 1
                }
            }
        }
        if count == 1 {
            result += temp
        } else {
            result += String(count) + temp
        }
        answer.append(result.count)
        sArr.removeAll()
    }
    return answer.min()!
}
