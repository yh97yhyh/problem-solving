//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 포도주 시식
// 2156

import Foundation

let n = Int(readLine()!)!
var wines = Array(repeating: 0, count: n)
var dp = Array(repeating: 0, count: n)

for i in 0..<n {
    wines[i] = Int(readLine()!)!
}

if n <= 2 {
    if n == 1 {
        print(wines[0])
    } else {
        print(wines[0] + wines[1])
    }
} else {
    dp[0] = wines[0]
    dp[1] = wines[0] + wines[1]
    dp[2] = max(dp[1], wines[0] + wines[2], wines[1] + wines[2])
    for i in 3..<n {
        dp[i] = max(dp[i-1], dp[i-2] + wines[i], dp[i-3] + wines[i-1] + wines[i])
    }
    print(dp[n-1])
}
