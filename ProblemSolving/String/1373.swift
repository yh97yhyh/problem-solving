//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 2진수 8진수
// 1373
// 시간초과

import Foundation

let str = readLine()!

//let decimalNumber = Int(str, radix: 2)!
//let octalString = String(decimalNumber, radix: 8)
//print(octalString)

let reversed = String(str.reversed())

var result = ""
var sum = 0
var count = 0
for i in 0..<reversed.count {
    let index = reversed.index(reversed.startIndex, offsetBy: i)
    if count == 3 {
//        result += "\(sum)"
        result.insert(contentsOf: "\(sum)", at: result.startIndex)
        count = 0
        sum = 0
    }
    if reversed[index] == "1" {
        sum += Int(pow(2.0, Double(count)))
    }
    
    if i == reversed.count - 1 {
        result.insert(contentsOf: "\(sum)", at: result.startIndex)
    }
    
    count += 1
}

print(result)
