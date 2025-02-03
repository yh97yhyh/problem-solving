//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/13/24.
//

// 1, 2, 3 더하기 4
// 15989

import Foundation

let t = Int(readLine()!)!

// 1을 써서 합을 나타내는 경우
var dp = Array(repeating: 1, count: 10001)

// 2가 추가되는 경우
for i in 2..<10001 {
    dp[i] += dp[i-2]
}

// 3이 추가되는 경우
for i in 3..<10001 {
    dp[i] += dp[i-3]
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    print(dp[n])
}
