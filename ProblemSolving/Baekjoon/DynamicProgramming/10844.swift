//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 쉬운 계단 수
// 10844

import Foundation

let n = Int(readLine()!)!

// dp[i][j]는 i번째 자리에 j가 올 경우의 계단 수의 개수를 저장
var dp = Array(repeating: Array(repeating: 0, count: 10), count: n + 1)
for i in 1...9 {
    dp[1][i] = 1
}

if n == 1 {
    print(9)
} else {
    for i in 2...n {
        for j in 0...9 {
            if j == 0 { // j가 0이면 다음 숫자는 1만 가능
                dp[i][j] = dp[i-1][1]
            } else if j == 9 { // j가 9이면 다음 숫자는 8만 가능
                dp[i][j] = dp[i-1][8]
            }
            else { // 그 외의 경우는 j - 1과 j + 1인 경우의 합
                dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % 1000000000
            }
        }
    }

    var totalCount = 0
    for i in 0...9 {
        totalCount = (totalCount + dp[n][i]) % 1000000000
    }

    print(totalCount)
}
