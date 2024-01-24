//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/12.
//

// 좋다
// 1253

import Foundation

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }

nums.sort()

var answer = 0
func twoPointer(_ targetIndex: Int) -> Bool {
    let target = nums[targetIndex]
    var start = 0
    var end = n-1
    var result = false
    
    while true {
        if start >= end {
            break
        }
        if start == targetIndex {
            start += 1
        } else if end == targetIndex {
            end -= 1
        } else {
            let a = nums[start]
            let b = nums[end]
            if a + b == target {
                result = true
                break
            } else if a + b > target {
                end -= 1
            } else {
                start += 1
            }
        }
    }
    
    return result
}

for i in 0..<n {
    if twoPointer(i) {
        answer += 1
    }
}
print(answer)
