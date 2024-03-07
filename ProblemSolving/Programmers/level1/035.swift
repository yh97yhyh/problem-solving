//
//  035.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 삼총사
// https://school.programmers.co.kr/learn/courses/30/lessons/131705

import Foundation

func solution(_ number:[Int]) -> Int {
    numbers = number
    len = number.count
    recur()
    return result
}

var numbers: [Int] = []
var len = 0

var nums: [Int] = []
var result = 0

func recur() {
    if nums.count == 3 {
        var sum = 0
        for i in nums {
            sum += numbers[i]
        }
        if sum == 0 {
            result += 1
        }
        // print(nums, sum)
        return
    }
    
    for i in 0..<len {
        if !nums.isEmpty && i < nums.last! {
            continue
        }
        
        if !nums.contains(i) {
            nums.append(i)
            recur()
            nums.popLast()
        }
    }
}
