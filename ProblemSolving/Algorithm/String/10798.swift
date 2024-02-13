//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 세로읽기
// 10798

import Foundation

var strs: [[Character]] = []
var maxCount = 0
for _ in 0..<5 {
    let str = Array(readLine()!)
    strs.append(str)
    maxCount = max(maxCount, str.count)
}

var result = ""
for i in 0..<maxCount {
    for j in 0..<5 {
        if i < strs[j].count {
//            print(j, strs[j].count)
            result += "\(String(strs[j][i]))"
        }
    }
}

print(result)
