//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/29/24.
//

// 1, 2, 3 더하기 4
// 15989

import Foundation

var dp = Array(repeating: 1, count: 10001) // 1로만 합을 만들기

for i in 2..<10001 {
    dp[i] += dp[i-2] // 2가 추가되는 경우
}

for i in 3..<10001 {
    dp[i] += dp[i-3] // 3이 추가되는 경우
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    print(dp[n])
}
