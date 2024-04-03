//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 구간 합 구하기 4
// 11659

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var sums = Array(repeating: 0, count: N+1)

var sum = 0
for i in 1...N {
    sum += nums[i-1]
    sums[i] = sum
}

//print(sums)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let i = input[0]
    let j = input[1]
    let sum = sums[j] - sums[i-1]
    print(sum)
}
