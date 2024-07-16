//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/16/24.
//

// 겹치는 건 싫어
// 20922

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1] // 같은 정수를 k개 이하 포함한 최장부분 수열의 길이

var nums = readLine()!.split(separator: " ").map { Int(String($0))! }

if n == 1 {
    print(1)
} else {
    var left = 0
    var right = 0
    var frequency = [Int: Int]()
    var maxLength = 0

    while true {
        if right >= n {
            break
        }
        
        let currentRightNum = nums[right]
        frequency[currentRightNum, default: 0] += 1

        while true {
            if frequency[currentRightNum]! <= k {
                break
            }
            
            let currentLeftNum = nums[left]
            frequency[currentLeftNum]! -= 1
            
            if frequency[currentLeftNum] == 0 {
                frequency.removeValue(forKey: currentLeftNum)
            }
            
            left += 1
        }

        maxLength = max(maxLength, right - left + 1)
        right += 1
    }

    print(maxLength)
}
