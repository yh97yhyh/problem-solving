//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 문자열과 문자열
// 26866

import Foundation

let str = readLine()!
let n = Int(readLine()!)!

print(str[str.index(str.startIndex, offsetBy: n-1)])
