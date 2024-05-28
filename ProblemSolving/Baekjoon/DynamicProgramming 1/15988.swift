//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/31.
//

// 1, 2, 3 더하기 3
// 15988

import Foundation

let testCase = Int(readLine()!)!

var ns: [Int] = []
for _ in 0..<testCase {
    let n = Int(readLine()!)!
    ns.append(n)
}
let maxN = ns.max()!
let div = 1000000009

var sums: [Int] = [0, 1, 2, 4]
func dp(_ n: Int) {
    if n < 4 {
        return
    }
    
    for i in 4...maxN {
        sums.append(((sums[i-1] % div) + (sums[i-2] % div) + (sums[i-3] % div)) % div)
    }
}

dp(maxN)

var result = ""
for n in ns {
    result += "\(sums[n])\n"
}
print(result)
