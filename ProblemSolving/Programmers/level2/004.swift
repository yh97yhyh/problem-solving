//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 올바른 괄호
// https://school.programmers.co.kr/learn/courses/30/lessons/12909

import Foundation

import Foundation

func solution(_ str :String) -> Bool {
    var ans:Bool = false
    var lefts: [Int] = []
    
    for s in str {
        if String(s) == "(" {
            lefts.append(1)
        } else {
            if lefts.count == 0 {
               return false
            } else {
                lefts.removeLast() // removeFirst()는 시간 초과
            }
        }
    }

    return lefts.isEmpty ? true : false
}
