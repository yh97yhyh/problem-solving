//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 상수
// 2908

import Foundation

let inputs = readLine()!.split(separator: " ").map { String($0) }

var nums: [Int] = []

for str in inputs {
    let reversed = String(str.reversed())
    let num = Int(reversed)!
    nums.append(num)
}

print(nums.max()!)
