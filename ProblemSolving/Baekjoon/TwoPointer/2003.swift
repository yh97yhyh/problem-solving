//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/25.
//

// 수들의 합 2
// 2003
// 완전탐색

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // N개로 된 수열
let m = inputs[1] // 합이 M이 되는 경우의 수
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var count = 0
for i in 0..<n {
    var sum = 0
    for j in i..<n {
        sum += nums[j]
        if sum ==  m {
            count += 1
        }
    }
}

print(count)
