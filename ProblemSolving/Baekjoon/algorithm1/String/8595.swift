//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 히든 넘버
// 8595

import Foundation

let n = Int(readLine()!)!
let str = readLine()!

var sum = 0
var sumResult = ""
var isCanSum = false

var i = 0
for char in str {
    let asciiIntValue = Int(UnicodeScalar(String(char))!.value)
    if asciiIntValue >= 48 && asciiIntValue <= 57 {
        sumResult += "\(String(char))"
        isCanSum = true
    } else {
        if isCanSum {
            sum += Int(sumResult)!
            sumResult = ""
            isCanSum = false
        }
    }
    if i == n-1 && !sumResult.isEmpty {
        sum += Int(sumResult)!
    }
    i += 1
}

print(sum)
