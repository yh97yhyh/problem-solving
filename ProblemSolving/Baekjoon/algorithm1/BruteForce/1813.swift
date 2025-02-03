//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 논리학 교수
// 1813
// 문제 풀이 https://skeptic9999.tistory.com/6

import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var counts = Array(repeating: 0, count: 51)

for i in 0..<n {
    counts[nums[i]] += 1
}

var isValid = false
for i in stride(from: 50, through: 0, by: -1) {
    if counts[i] == i {
        print(i)
        isValid = true
        break
    }
}

if !isValid {
    print("-1")
}
