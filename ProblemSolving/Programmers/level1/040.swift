//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

// K번째수
// https://school.programmers.co.kr/learn/courses/30/lessons/42748

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        let n = array[i-1...j-1].sorted()[k-1]
        result.append(n)
    }
    
    return result
}
