//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/28/24.
//

// 2565
// 전깃줄

import Foundation

let N = Int(readLine()!)!

var lines: [Int: Int] = [:]

var arr: [Int] = []
var brr: [Int] = []

var dp = Array(repeating: 1, count: N)

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    
    lines[a] = b
}

let sortedLines = lines.sorted { $0.0 < $1.0 }
//print(sortedLines)

for sortedLine in sortedLines {
    arr.append(sortedLine.key)
    brr.append(sortedLine.value)
}

//print("----------------")
for i in 1..<N {
    for j in 0..<i {
        let a2 = arr[i]
        let a1 = arr[j]
        let b2 = brr[i]
        let b1 = brr[j]
        
        if (a1 < a2) && (b1 < b2) {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(N - dp.max()!)
