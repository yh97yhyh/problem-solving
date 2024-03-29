//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 파도반 수열
// 9461

import Foundation

var dy = Array(repeating: 0, count: 101)

func dp() {
    dy[1] = 1
    dy[2] = 1
    dy[3] = 1
    
    for i in 3...100 {
        dy[i] = dy[i-2] + dy[i-3]
    }
}

dp()

let T = Int(readLine()!)!

var answer = ""
for i in 0..<T {
    let n = Int(readLine()!)!
    answer += "\(dy[n])\n"
}
print(answer)
