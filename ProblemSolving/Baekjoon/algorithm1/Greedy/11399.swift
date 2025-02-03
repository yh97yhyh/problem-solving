//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// ATM
// 11399

import Foundation

let N = Int(readLine()!)!
var times = readLine()!.split(separator: " ").map { Int(String($0))! }
times.sort()

var answer = 0
for i in 0..<N {
    answer += times[i] * (N-i)
}
print(answer)
