//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 정수 삼각형
// 1932

import Foundation

let N = Int(readLine()!)!
//var nums: [[Int]] = []
var dy: [[Int]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    nums.append(input)
    dy.append(input)
}

for i in 0..<N {
    if i == 0 {
        continue
    }
    
    let len = dy[i].count
    for j in 0..<len {
        if j == 0 {
            dy[i][j] = dy[i-1][j] + dy[i][j]
        } else if j == len-1 {
            dy[i][j] = dy[i-1][j-1] + dy[i][j]
        } else {
            dy[i][j] = max(dy[i-1][j-1], dy[i-1][j]) + dy[i][j]
        }
    }
}

print(dy[N-1].max()!)
