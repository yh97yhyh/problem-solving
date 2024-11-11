//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/11/24.
//

// 겹치는 건 싫어
// 20922

// 같은 원소가 k개 이하로 들어 있는 최장 연속 부분 수열의 길이

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var frequency: [Int: Int] = [:]

if n == 1 {
    print(1)
} else {
    var frequency: [Int: Int] = [:]
    var left = 0
    var maxLength = 0
    
    for right in 0..<n {
        let curRightNum = nums[right]
        frequency[curRightNum, default: 0] += 1
        

        while true {
            if frequency[curRightNum]! <= k {
                break
            }
            
            let curLeftNum = nums[left]
            frequency[curLeftNum]! -= 1
            
            if frequency[curLeftNum] == 0 {
                frequency[curLeftNum] = nil
            }
            
            left += 1
        }
        
        maxLength = max(maxLength, right - left + 1)
    }
    
    print(maxLength)
}
