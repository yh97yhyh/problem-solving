//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Plus Minus
// https://www.hackerrank.com/challenges/one-month-preparation-kit-plus-minus/problem

import Foundation

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    
    var neg = 0
    var zero = 0
    var pos = 0
    let len = arr.count
    
    for n in arr {
        if n > 0 {
            pos += 1
        } else if n < 0 {
            neg += 1
        } else {
            zero += 1
        }
    }
    
    print(Double(pos) / Double(len))
    print(Double(neg) / Double(len))
    print(Double(zero) / Double(len))
    
    // String(format: "%.6f", number)
}
