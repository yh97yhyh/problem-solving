//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/18/24.
//

// 한 줄로 서기
// 1138
// 자기보다 큰 사람이 왼쪽에 몇명이 있는지만 기억, 줄을 어떻게 서야하는지

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = Array(repeating: 0, count: n)

for i in 0..<n {
    let height = i+1
    let position = arr[i]
    var count = 0
    
    for j in 0..<n {
        if result[j] != 0 {
            continue
        }
        if count == position {
            result[j] = i + 1
        }
        count += 1
    }
}

print(result.map { String($0) }.joined(separator: " "))
