//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 문자열 반복
// 2675

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ")
    let num = Int(inputs[0])!
    let str = inputs[1]
    
    var result = ""
    for char in str {
        for _ in 0..<num {
            result += "\(char)"
        }
    }
    print(result)
}
