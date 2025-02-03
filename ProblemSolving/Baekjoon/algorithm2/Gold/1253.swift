//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/2/24.
//

// 좋다
// 1253
// 어떤 수가 다른 수 두 개의 합으로 나타낼 수 있으면 "좋다"
// 수의 위치가 다르면 값이 같아도 다른 수

import Foundation

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = 0

nums.sort()

func isGood(_ targetIndex: Int) -> Bool {
    let target = nums[targetIndex]
    var left = 0
    var right = n-1
    var isValid = false
    
    while true {
        if left >= right {
            break
        }
        
        // "다른 두 수" 조건
        if left == targetIndex {
            left += 1
            continue
        }
        
        if right == targetIndex {
            right -= 1
            continue
        }
        
        let s = nums[left]
        let e = nums[right]
        
        if s + e == target {
            isValid = true
            break
        } else if s + e > target {
            right -= 1
        } else {
            left += 1
        }
    }
    
    return isValid
}

for i in 0..<n {
    if isGood(i) {
        answer += 1
    }
}
print(answer)
