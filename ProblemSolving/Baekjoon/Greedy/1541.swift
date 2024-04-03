//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 잃어버린 괄호
// 1541
// 덧셈을 먼저 계산해서 수를 크게 한 후 빼면 된다

import Foundation

let str = String(readLine()!)
let splittedFromSub = str.split(separator: "-")

var answer = 0
var isFirst = true
for sub in splittedFromSub {
    let sum = sub.split(separator: "+").map { Int($0)! }.reduce(0, +)
    if isFirst {
        answer += sum
        isFirst = false
    } else {
        answer -= sum
    }
}

print(answer)
