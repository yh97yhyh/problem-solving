//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/5/24.
//

// 돌 게임
// 9655
// true -> SK, false -> CY

import Foundation

let n = Int(readLine()!)!

var dp = Array(repeating: false, count: 1001)
dp[1] = true
dp[2] = false
dp[3] = true

if n >= 4 {
    for i in 4...n {
        dp[i] = !dp[i-1] || !dp[i-3]
    }
}

dp[n] == true ? print("SK") : print("CY")
