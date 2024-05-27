//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/27/24.
//

// 25192
// 인사성 밝은 곰돌이
// 배열로 하면 시간초과

import Foundation

let N = Int(readLine()!)!

var done: [String: Int] = [:]
var answer = 0

for _ in 0..<N {
    let str = String(readLine()!)
    
    if str == "ENTER" {
        done = [:]
        continue
    }
    
    if let n = done[str] {
        continue
    } else {
        done[str] = 1
        answer += 1
    }
}

print(answer)
