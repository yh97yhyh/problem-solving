//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/14/24.
//

// 한 줄로 서기
// 1138

import Foundation

var numbers: [[Int]] = []

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = Array(repeating: 0, count: n)

for i in 0..<n {
    let position = input[i]
    var count = 0
    
    for j in 0..<n {
        if result[j] == 0 {
            if count == position {
                result[j] = i + 1
                break
            }
            count += 1
        }
    }
}

print(result.map { String($0) }.joined(separator: " "))
