//
//  047.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 명예의 전당 (1)
// https://school.programmers.co.kr/learn/courses/30/lessons/138477

import Foundation

func solution(_ k:Int, _ scores:[Int]) -> [Int] {
    var result: [Int] = []
    var cur: [Int] = []
    
    for i in 0..<scores.count {
        let score = scores[i]
        
        if i < k {
            cur.append(score)
            cur.sort(by: >)
            result.append(cur.last!)
            continue
        }
        
        if score > cur.last! {
            cur.removeLast()
            cur.append(score)
            cur.sort(by: >)
        }
        result.append(cur.last!)
    }
    
    return result
}
