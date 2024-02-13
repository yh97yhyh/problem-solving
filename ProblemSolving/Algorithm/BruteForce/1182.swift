//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/18.
//

// 부분수열의 합
// 1182
// 반례 https://www.acmicpc.net/board/view/84510

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = inputs1[0]
var s = inputs1[1]
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var subsequence: [(Int, Int)] = [] // (num i)
var result = 0
func recur(_ m: Int) {
    if subsequence.count == m {
        if subsequence.reduce(0) { $0 + $1.0 } == s {
            result += 1
//            print(subsequence)
        }
        return
    }
    
    for i in 0..<n {
        if subsequence.count > 0 && i < subsequence.last!.1 {
            continue
        }
        
        let isContained = subsequence.contains { element in
            return element == (nums[i], i)
        }
        if !isContained {
            subsequence.append((nums[i], i))
            recur(m)
            subsequence.popLast()
        }
    }
}

for m in 1...n {
    recur(m)
}

print(result)
