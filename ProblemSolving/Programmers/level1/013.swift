//
//  013.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 두 정수 사이의 합
// https://school.programmers.co.kr/learn/courses/30/lessons/12912

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum: Int64 = 0
    if a == b {
        return Int64(a)
    }
    
    let start = a < b ? a : b
    let end = a < b ? b : a
    for i in start...end {
        sum += Int64(i)
    }
    return sum
}
