//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 직사각형 별찍기

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var result = ""
for i in 0..<b {
    for j in 0..<a {
        result += "*"
    }
    result += "\n"
}

print(result)
