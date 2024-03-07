//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 1806
// 부분합

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs1[0] // n 길이의 수열
let s = inputs1[1] // 합이 s 이상
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

func twoPointer() -> Int {
    var start = 0
    var end = 0
    var sum = nums[0]
    var answer = n + 1
    
    while true {
        if start > end {
            break
        }
        if sum < s { // end++
            if end+1 >= n {
                break
            }
            end += 1
            sum += nums[end]
        } else { // start++
            answer = min(answer, end-start+1)
            sum -= nums[start]
            start += 1
        }
        
    }
    return answer == n + 1 ? 0 : answer
}

print(twoPointer())
