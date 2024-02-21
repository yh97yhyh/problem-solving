//
//  010.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 정수 제곱근 판별
// https://school.programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func solution(_ n:Int64) -> Int64 {
    let sqr = sqrt(Double(n))
    if sqr == Double(Int(sqr)) {
        return Int64(pow((sqr+1), 2))
    } else {
        return -1
    }
}
