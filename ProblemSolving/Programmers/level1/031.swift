//
//  031.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 3진법 뒤집기
// https://school.programmers.co.kr/learn/courses/30/lessons/68935

import Foundation

func solution(_ n:Int) -> Int {
    let a = String(String(n, radix: 3).reversed())
    let b = Int(a, radix: 3)!
    return b
}
