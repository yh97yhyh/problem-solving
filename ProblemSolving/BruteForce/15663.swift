//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/22.
//

// N과 M (9)
// 15663
// 시가 초과..

import Foundation

struct Seq {
    var num: Int
    var index: Int
}

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0]
let m = inputs[1]
let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }

var sequence: [Seq] = []
for i in 0..<inputs1.count {
    sequence.append(Seq(num: inputs1[i], index: i))
}
sequence.sort { $0.num < $1.num }

var totalResult: [[Int]] = []
var subsequence: [Seq] = []

func recur() {
    if subsequence.count == m {
        var result: [Int] = subsequence.map { $0.num }
        if !totalResult.contains(result) {
            totalResult.append(result)
        }
//        result += subsequence.map { String($0.num) }.joined(separator: " ")
//        result += "\n"
        return
    }
    
    for seq in sequence {
        let contains = subsequence.contains {$0.index == seq.index }
        if !contains {
            subsequence.append(seq)
            recur()
            subsequence.popLast()
        }
    }
}

recur()
var resultString = ""
for result in totalResult {
    resultString +=  result.map { String($0) }.joined(separator: " ")
    resultString += "\n"
}
print(resultString)
