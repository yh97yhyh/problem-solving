//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 숫자의 합
// 11720

import Foundation

let n = Int(readLine()!)!
let str = readLine()!

var count = 0
for s in str {
    let num = Int(String(s))!
    count += num
}
print(count)
