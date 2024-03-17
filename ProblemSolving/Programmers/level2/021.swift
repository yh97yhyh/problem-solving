//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// H-Index
// https://school.programmers.co.kr/learn/courses/30/lessons/42747

import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    let len = citations.count
    let arr = citations.sorted(by: >)
    
    for i in 0..<len {
        if i >= arr[i] {
            return i
        }
    }
    
    return len
}
