//
//  004.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 약수의 합
// https://school.programmers.co.kr/learn/courses/30/lessons/12928

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    if n == 0 || n == 1 {
        return n
    }
    
    for i in 1...n {
        if n % i == 0 {
            result += i
        }
    }
    
    return result
}
