//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 수학적 호기심
// 9094

import Foundation

let t = Int(readLine()!)!

var result = ""
for _ in 0..<t {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = inputs[0]
    let m = inputs[1]
    var count = 0
    
    for a in 1..<n {
        for b in a+1..<n {
            if (a*a + b*b + m) % (a*b) == 0 {
                count += 1
            }
        }
    }
    result += "\(count)\n"
}

print(result)
