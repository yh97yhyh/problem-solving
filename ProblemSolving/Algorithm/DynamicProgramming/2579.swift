//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/17.
//

// 계단 오르기
// 2579

import Foundation

let n = Int(readLine()!)!

var stairs = Array(repeating: 0, count: n+1)
var dy = Array(repeating: (0, 0), count: n+1)

for i in 1...n {
    stairs[i] = Int(readLine()!)!
}

func dp() {
    dy[1].0 = stairs[1]
    if n == 1 {
        return
    }
    
    dy[2].0 = stairs[2]
    dy[2].1 = stairs[1] + stairs[2]
    if n == 2 {
        return
    }
    
    for i in 3...n {
        dy[i].0 = max(dy[i-2].0, dy[i-2].1) + stairs[i]
        dy[i].1 = dy[i-1].0 + stairs[i]
    }
}

dp()
//print(dy)
print(max(dy[n].0, dy[n].1))
