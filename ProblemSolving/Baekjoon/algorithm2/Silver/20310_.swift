//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// 타노스
// 20310

import Foundation

let str = readLine()!

var zeroCnt = 0
var oneCnt = 0
var answer = ""

for s in str {
    if s == "0" {
        zeroCnt += 1
    } else {
        oneCnt += 1
    }
}

if zeroCnt > 0 {
    for _ in 0..<zeroCnt/2 {
        answer += "0"
    }
}

if oneCnt > 0 {
    for _ in 0..<oneCnt/2 {
        answer += "1"
    }
}

print(answer)
