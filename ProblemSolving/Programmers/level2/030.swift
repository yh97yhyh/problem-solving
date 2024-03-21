//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// 타겟 넘버
// https://school.programmers.co.kr/learn/courses/30/lessons/43165

import Foundation

func solution(_ numbers1:[Int], _ target1:Int) -> Int {
    numbers = numbers1
    target = target1
    dfs(0, 0)
    return result
}

var numbers: [Int] = []
var target = 0
var result = 0

func dfs(_ i: Int, _ sum: Int) {
    if i == numbers.count {
        if sum == target {
            result += 1
        }
        return
    }
    
    dfs(i+1, sum+numbers[i])
    dfs(i+1, sum-numbers[i])
}
