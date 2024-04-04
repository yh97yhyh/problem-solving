//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 나머지 합
// 10986

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1] // 구간합이 M으로 떨어지는


let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var sums = Array(repeating: 0, count: N+1)
var remains = Array(repeating: -1, count: N+1)

var sum = 0
for i in 1...N {
    sum += nums[i-1]
    sums[i] = sum
    remains[i] = sum % M
}
print(remains)

//var answer = 0
//for i in 1...N {
//    
//}
