//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 1806
// 부분합
// 안 되네..

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = inputs1[0]
let s = inputs1[1]

var start = 0
var end = 0
var sum = 0
var result = Int.max

while true {
    if start > end {
        break
    }
    if end >= n {
        break
    }
    
    if sum < s {
        sum += nums[end]
        end += 1
    } else if end == n {
        break
    } else {
        result = min(result, end - start)
        sum -= nums[start]
        start += 1
    }
}

print(result == Int.max ? 0 : result)
