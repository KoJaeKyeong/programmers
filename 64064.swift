//
//  64064.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/21.
//  불량사용자
//  https://programmers.co.kr/learn/courses/30/lessons/64064
import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var bannedUserCase = [[String]]()
    var answer = Set<[String]>()
    for i in banned_id.indices {
        // banned_id의 string을 1차원 배열로 만들어 for문(k)을 돌릴 수 있도록 한다.
        let splitBanned = banned_id[i].map { String($0) }
        var bannedUser = [String]()
        
        for j in user_id.indices {
            var count = 0
            // user_id의 string을 1차원 배열로 만들어 for문(k)을 돌릴 수 있도록 한다.
            let splitUser = user_id[j].map { String($0) }
            
            if splitBanned.count == splitUser.count {
                for k in splitBanned.indices {
                    if splitBanned[k] == splitUser[k] || splitBanned[k] == "*" {
                        count += 1
                    }
                    
                    if count == splitBanned.count {
                        bannedUser.append(user_id[j])
                    }
                }
            } else {
                continue
            }
        }
        bannedUserCase.append(bannedUser)
    }
    
    func combination(select: [String], i: Int) {
        if select.count == banned_id.count {
            answer.update(with: select.sorted())
            return
        }
        
        var select = select
        
        for n in bannedUserCase[i] {
            if select.contains(n) {
                continue
            }
            select.append(n)
            combination(select: select, i: i+1)
            select.removeLast()
        }
    }
    
    combination(select: [], i: 0)
    
    return answer.count
}
