//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 01타일
// 1904

import Foundation

let N = Int(readLine()!)!

func dp(_ n: Int) -> Int {
    var dy = Array(repeating: 1, count: 1000001)
    
    dy[1] = 1
    dy[2] = 2
    dy[3] = 3
    
    if n <= 3 {
        return dy[n]
    }
    
    for i in 4...n {
        dy[i] = (dy[i-1] + dy[i-2]) % 15746
    }
    
    return dy[n]
}

print(dp(N))
