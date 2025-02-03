//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/27/24.
//

// 1010
// 다리 놓기

import Foundation
 
let T = Int(readLine()!)!

var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for i in 1...30 {
    for j in 0...i {
        if j == 0 || i == j {
            dp[i][j] = 1
        } else {
            dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
        }
    }
}

for _ in 0..<T {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = inputs[0]
    let m = inputs[1]
    
    print(dp[m][n])
}
