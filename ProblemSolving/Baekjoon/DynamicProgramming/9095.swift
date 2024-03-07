//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/17.
//

// 1, 2, 3 더하기
// 9095

import Foundation

let t = Int(readLine()!)!

var cases: [Int] = []
for _ in 0..<t {
    cases.append(Int(readLine()!)!) // < 11
}

var dy: [Int] = Array(repeating: 0, count: 15)

func dp() {
    dy[1] = 1
    dy[2] = 2
    dy[3] = 4
    
    for i in 4...11 {
        dy[i] = dy[i-3] + dy[i-2] + dy[i-1]
    }
}

dp()
for n in cases {
    print(dy[n])
}


