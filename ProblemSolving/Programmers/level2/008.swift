//
//  008.swift
//  ProblemSolving
//
//  Created by 영현 on 3/8/24.
//

// 피보나치 수
// https://school.programmers.co.kr/learn/courses/30/lessons/12945

import Foundation

let test = 100000

func solution(_ n:Int) -> Int {
    return fibonacci(n)
}

var fibonaccis: [Int] = Array(repeating: 0, count: 100001)

func fibonacci(_ n: Int) -> Int {
    fibonaccis[0] = 0
    fibonaccis[1] = 1
    
    if n <= 1 {
        return fibonaccis[n]
    }
    
    for i in 2...n {
        fibonaccis[i] = (fibonaccis[i-1] + fibonaccis[i-2]) % 1234567
    }
    
    return fibonaccis[n]
}

print(solution(test))
