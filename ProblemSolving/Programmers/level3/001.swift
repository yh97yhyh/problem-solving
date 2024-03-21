//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// 이중우선순위큐
// https://school.programmers.co.kr/learn/courses/30/lessons/42628

import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue: [Int] = []
    
    for oper in operations {
        let strs = oper.split(separator: " ")
        if strs[0] == "I" {
            let num = Int(strs[1])!
            queue.append(num)
        } else if oper == "D 1" {
            if !queue.isEmpty {
                queue.removeLast()
            }
        } else if oper == "D -1" {
            if !queue.isEmpty {
                queue.removeFirst()
            }
        }
        queue.sort()
    }
    
    if queue.isEmpty {
        return [0, 0]
    }
    
    return [queue.max()!, queue.min()!]
}
