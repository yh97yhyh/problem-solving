//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 문자열 집합
// 14425

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var targetStrs: [String: Int] = [:]

for i in 0..<N {
    let str = String(readLine()!)
    targetStrs[str] = 1
}

var answer = 0
for i in 0..<M {
    let str = String(readLine()!)
    if let val = targetStrs[str] {
        answer += 1
    }
}

print(answer)
