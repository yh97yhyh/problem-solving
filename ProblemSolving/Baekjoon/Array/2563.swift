//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/25/24.
//

// 색종이
// 2563

import Foundation

let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: 100), count: 100)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = input[0]
    let y = input[1]
    
    for i in y..<y+10 {
        for j in x..<x+10 {
            arr[i][j] = 1
        }
    }
}

print(arr.flatMap { $0 }.filter { $0 == 1 }.count)
