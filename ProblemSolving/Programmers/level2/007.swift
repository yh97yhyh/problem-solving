//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/8/24.
//

// 다음 큰 숫자
// https://school.programmers.co.kr/learn/courses/30/lessons/12911

import Foundation

let test = 0

func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    
    var answer = n+1
    let nBinaryCount = Array(String(n, radix: 2)).filter { String($0) == "1"}.count
    
    while true {
        if isSatisfied(n, answer, nBinaryCount) {
            break
        }
        answer += 1
    }
    
    return answer
}

func isSatisfied(_ n: Int, _ m: Int, _ nBinaryCount: Int) -> Bool {
    if m <= n {
        return false
    }
    
    let mBinary = Array(String(m, radix: 2))
    
    if nBinaryCount != mBinary.filter { String($0) == "1" }.count {
        return false
    }
    
    return true
}

print(solution(test))
