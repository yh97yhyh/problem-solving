//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 문자열
// 9086

import Foundation

let n = Int(readLine()!)!
var strs: [String] = []
for _ in 0..<n {
    strs.append(readLine()!)
}

for str in strs {
    print("\(str.first!)\(str.last!)")
}
