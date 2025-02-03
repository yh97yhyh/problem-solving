//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 1로 만들기
// 1463

import Foundation

let N = Int(readLine()!)!
var dy = Array(repeating: 0, count: N+1)

if N == 1 {
    print(0)
} else {
    for i in 2...N {
        dy[i] = dy[i-1] + 1
        if i % 2 == 0 {
            dy[i] = min(dy[i], dy[i/2] + 1)
        }
        if i % 3 == 0 {
            dy[i] = min(dy[i], dy[i/3] + 1)
        }
    }
    print(dy[N])
}
