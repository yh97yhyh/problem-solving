//
//  015.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 멀리 뛰기
// https://school.programmers.co.kr/learn/courses/30/lessons/12914
// DP로 풀자!!

import Foundation

func solution(_ n:Int) -> Int {
    var dp = Array(repeating: 0, count: 2001)
    dp[1] = 1
    dp[2] = 2
    
    if n <= 2 {
        return dp[n]
    }
    
    for i in 3...n {
        dp[i] = (dp[i-1] + dp[i-2]) % 1234567 // 오버플로우 방지
    }
    
    return dp[n]
}


// 시간초과
//func solution(_ n:Int) -> Int {
//    finish = n
//    recur()
//    return answer
//}
//
//var finish = 0
//var cur: [Int] = []
//var answer = 0
//let moves = [1, 2]
//
//func recur() {
//    let total = cur.reduce(0, +)
//    if total >= finish {
//        if total == finish {
//            answer += 1
//        }
//        return
//    }
//    
//    for move in moves {
//        cur.append(move)
//        recur()
//        cur.removeLast()
//    }
//    
//}
