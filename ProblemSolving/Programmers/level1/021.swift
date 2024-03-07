//
//  021.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 내적
// https://school.programmers.co.kr/learn/courses/30/lessons/70128

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    return result
}
