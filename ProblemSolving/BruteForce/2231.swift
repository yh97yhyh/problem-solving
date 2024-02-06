//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 분해합
// 2231

import Foundation

let n = Int(readLine()!)!

var isValid = false
for i in 1...n {
    var str = String(i)
    var sum = i
    while true {
        if str.isEmpty {
            break
        }
        
        sum += Int(String(str.removeFirst()))!
    }
    
    if sum == n {
        print(i)
        isValid = true
        break
    }
}

if !isValid {
    print("0")
}
