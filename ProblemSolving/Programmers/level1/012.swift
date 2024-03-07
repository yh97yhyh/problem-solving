//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 하샤드 수
// https://school.programmers.co.kr/learn/courses/30/lessons/12947

import Foundation

func solution(_ x: Int) -> Bool {
    let sum = String(x).map { Int(String($0))! }.reduce(0, +)
    if x % sum == 0 {
        return true
    } else {
        return false
    }
}
