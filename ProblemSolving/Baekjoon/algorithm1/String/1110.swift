//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 더하기 사이클
// 1110

import Foundation

let n = Int(readLine()!)!
var newN = n
var preN = 0
var cnt = 0
var isStart = true

while true {
    if !isStart && newN == n {
        break
    }
    isStart = false
    
    let left = newN / 10
    let right = newN % 10
    let sum = left + right
    newN = right * 10 + sum % 10
//    print(left, right, newN)
    
    cnt += 1
}

print(cnt)
