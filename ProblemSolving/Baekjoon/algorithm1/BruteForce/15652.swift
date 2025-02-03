//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/10.
//

// N과 M (4)
// 15652

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = inputs[0]
let m = inputs[1]

var result: [Int] = []
var resultString = ""

recur()

func recur() {
    if result.count == m {
//        print(result)
        resultString += result.map { String($0) }.joined(separator: " ")
        resultString += "\n"
        return
    }
    
    for i in 1...n {
        if result.count > 0 && i < result.last! {
            continue
        }
        result.append(i)
        recur()
        result.popLast()
    }
}

print(resultString)
