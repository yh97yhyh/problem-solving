//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 행렬의 덧셈
// https://school.programmers.co.kr/learn/courses/30/lessons/12950

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = Array(repeating: [], count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    
    return result
}
