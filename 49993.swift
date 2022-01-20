//
//  49993.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/21.
//  스킬트리
//  https://programmers.co.kr/learn/courses/30/lessons/49993?language=swift

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    let skills = skill.map { String($0) }
    var answer = 0
    
    for skill_tree in skill_trees {
        let skillTrees = skill_tree.map { String($0) }
        var mySkill = [String]()

        for skillTree in skillTrees {
            if skills.contains(skillTree) {
                mySkill.append(skillTree)
            }
        }
        
        if skill.hasPrefix(mySkill.joined()) {
            answer += 1
        }
    }
    
    return answer
}
