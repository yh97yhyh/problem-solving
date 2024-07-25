//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/25/24.
//

// 돌 게임
// 9655

import Foundation

let n = Int(readLine()!)!

var dy = Array(repeating: true, count: 1001) // true -> SK, false -> CY

dy[1] = true
dy[2] = false
dy[3] = true
dy[4] = false

func dp(_ n: Int) -> String {
    if n <= 4 {
        return dy[n] ? "SK" : "CY"
    }
    
    for i in 5...n {
        dy[i] = !dy[i-1] || !dy[i-3]
    }
    
    return dy[n] ? "SK" : "CY"
}

print(dp(n))
