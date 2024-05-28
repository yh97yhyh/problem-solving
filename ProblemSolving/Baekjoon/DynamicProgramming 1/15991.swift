//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/31.
//

// 1, 2, 3 더하기 6
// 15991

import Foundation

let testCase = Int(readLine()!)!

var ns: [Int] = []
for _ in 0..<testCase {
    let n = Int(readLine()!)!
    ns.append(n)
}
let maxN = ns.max()!
let div = 1000000009

var nums = [0, 1, 2, 2, 3, 3, 6]
func dp(_ n: Int) {
    if n < 7 {
        return
    }
    
    for i in 7...maxN {
        let num = (nums[i-2] % div + nums[i-4] % div + nums[i-6] % div) % div
        nums.append(num)
    }
}

dp(maxN)

var result = ""
for n in ns {
    result += "\(nums[n])\n"
}
print(result)
