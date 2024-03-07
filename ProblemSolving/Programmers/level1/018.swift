//
//  018.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 나누어 떨어지는 숫자 배열
// https://school.programmers.co.kr/learn/courses/30/lessons/12910

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    
    for a in arr {
        if a % divisor == 0 {
            result.append(a)
        }
    }
    
    if result.isEmpty {
        return [-1]
    } else {
        return result.sorted()
    }
}
