//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 괄호
// 9012

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    var stack: [Character] = []
    let str = readLine()!
    var isYes = true
    for c in str {
        if c == "(" {
            stack.append(c)
        } else {
            if stack.isEmpty {
                isYes = false
                break
            } else {
                stack.removeLast()
            }
        }
    }
    print(isYes && stack.isEmpty ? "YES" : "NO")
}
