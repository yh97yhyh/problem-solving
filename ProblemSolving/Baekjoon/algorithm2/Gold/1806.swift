//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/3/24.
//

// 부분합
// 1806

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let s = input[1] // s 이상되는 수열중 짧은 것

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

func twoPointer() -> Int {
    var result = Int.max
    var left = 0
    var right = 0
    var curSum = nums[left]
    
    while true {
        if left > right {
            break
        }
        
        if left == n-1 {
            if curSum >= s {
                result = min(result, right - left + 1)
            }
        }
        
        if right == n-1 {
            if curSum >= s {
                curSum -= nums[left]
                result = min(result, right - left + 1)
                left += 1
                continue
            } else {
                break
            }
        }
        
        if curSum >= s {
            curSum -= nums[left]
            result = min(result, right - left + 1)
            left += 1
        } else {
            right += 1
            curSum += nums[right]
        }
        
    }
    
    return result
}

let answer = twoPointer()
answer == Int.max ? print(0) : print(answer)
