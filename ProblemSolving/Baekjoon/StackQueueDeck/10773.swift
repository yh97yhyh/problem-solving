//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 제로
// 10773

import Foundation

let K = Int(readLine()!)!

var stack: [Int] = []
for _ in 0..<K {
    let n = Int(readLine()!)!
    if n == 0 {
        stack.removeLast()
    } else {
        stack.append(n)
    }
}

print(stack.reduce(0, +))
