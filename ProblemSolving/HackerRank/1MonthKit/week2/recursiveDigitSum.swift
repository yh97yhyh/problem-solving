//
//  recursiveDigitSum.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Recursive Digit Sum
// https://www.hackerrank.com/challenges/one-month-preparation-kit-recursive-digit-sum/problem

import Foundation

func superDigit(n: String, k: Int) -> Int {
    // Write your code here
    var isFirst = true
    
    var arr = Array(n)
    // var cnt = 0
    while true {
        if arr.count == 1 {
            break
        }
        
        let nrr = arr.map { Int(String($0))! }
        var sum = nrr.reduce(0, +)
        
        if isFirst {
            sum *= k
            isFirst = false
        }
        
        // print(arr, sum)
        
        arr = Array(String(sum))
        
        // cnt += 1
    }
    
    return Int(String(arr))!
}
