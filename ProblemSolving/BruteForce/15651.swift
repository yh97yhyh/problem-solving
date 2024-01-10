//
//  01.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/10.
//

// N과 M (3)
// 15651

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = inputs[0]
let m = inputs[1]

var result: [Int] = []
var resultString = ""

recur()

func recur() {
    if result.count == m {
        resultString += result.map { String($0) }.joined(separator: " ")
        resultString += "\n"
        return
    }
    
    for i in 1...n {
        result.append(i)
        recur()
        result.popLast()
    }
}

print(resultString)

