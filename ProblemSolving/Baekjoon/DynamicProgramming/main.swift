//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 가장 긴 바이토닉 부분 수열
// 11054
// https://st-lab.tistory.com/136

import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let reversedNums = Array(nums.reversed())
var increaseDp = Array(repeating: 1, count: N)
var decreaseDp = Array(repeating: 1, count: N)

for i in 1..<N {
    for j in 0..<i {
        if nums[i] > nums[j] {
            increaseDp[i] = max(increaseDp[i], increaseDp[j]+1)
        }
        if reversedNums[i] > reversedNums[j] {
            decreaseDp[i] = max(decreaseDp[i], decreaseDp[j]+1)
        }
    }
}
decreaseDp.reverse()

var answer = 0
for i in 0..<N {
    answer = max(answer, increaseDp[i] + decreaseDp[i]-1)
}
print(answer)
