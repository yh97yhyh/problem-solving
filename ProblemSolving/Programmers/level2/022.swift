//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 행렬의 곱셈
// https://school.programmers.co.kr/learn/courses/30/lessons/12949

import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]]? {
    let row1 = arr1.count
    let col1 = arr1[0].count
    let col2 = arr2[0].count

    var result = Array(repeating: Array(repeating: 0, count: col2), count: row1)

    for i in 0..<row1 {
        for j in 0..<col2 {
            for k in 0..<col1 {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }

    return result
}
