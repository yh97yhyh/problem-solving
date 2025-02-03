//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 뒤집힌 덧셈
// 1357

import Foundation

let strs = readLine()!.split(separator: " ")

let reversedA = Int(String(strs[0].reversed()))!
let reversedB = Int(String(strs[1].reversed()))!

let result = Int(String(String(reversedA + reversedB).reversed()))!

print(result)
