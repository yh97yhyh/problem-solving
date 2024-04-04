//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/5/24.
//

// 스킬트리
// https://school.programmers.co.kr/learn/courses/30/lessons/49993

import Foundation

func solution(_ skill:String, _ skillTrees:[String]) -> Int {
    var answer = 0
    
    for skillTree in skillTrees {
        var queue = Array(skill)
        var isCan = true
        for skill in skillTree {
            if !queue.isEmpty && queue.contains(skill) {
                if queue.first! == skill {
                    queue.removeFirst()
                } else {
                    isCan = false
                    break
                }
            }
        }
        if isCan {
            answer += 1
        }
    }
    
    return answer
}
