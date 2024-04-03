//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 수열
// 2559

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 전체 날짜 수
let K = input[1] // 연속적인 날짜 수
let tempers = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = Int.min
var sum = 0
for i in 0..<N {
    if i < K {
        sum += tempers[i]
        if i == K-1 {
            answer = max(answer, sum)
        }
    } else {
        sum -= tempers[i-K]
        sum += tempers[i]
        answer = max(answer, sum)
    }
}
print(answer)
