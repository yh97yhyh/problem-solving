//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 18870
// 좌표 압축
// 이분탐색 lower bound 이용!

import Foundation

let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var sortedNums = Array(Set(nums)).sorted()
let len = sortedNums.count
var answer = ""

for num in nums {
    let target = num
    var start = 0
    var end = len - 1
    
    while true {
        if start >= end {
            break
        }
        let mid = (start + end) / 2
        if sortedNums[mid] >= target {
            end = mid
        } else {
            start = mid + 1
        }
    }
    
    answer += "\(start) "
}
print(answer)
