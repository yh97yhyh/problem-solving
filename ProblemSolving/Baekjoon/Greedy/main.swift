///Users/yh/Desktop/study/problem-solving/ProblemSolving/Baekjoon/Greedy/main.swift
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/1/24.
//

// 회의실 배정
// 1931

import Foundation

let N = Int(readLine()!)!

var meetings: [(Int, Int)] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let start = input[0]
    let end = input[1]
    meetings.append((start, end))
}

