//
//  diagonalDifference.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Diagonal Difference
// https://www.hackerrank.com/challenges/one-month-preparation-kit-diagonal-difference/problem

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let len = arr.count
    
    var sum1 = 0
    var sum2 = 0
    
    for i in 0..<len {
        let num1 = arr[i][i]
        let num2 = arr[i][len-1-i]
        sum1 += num1
        sum2 += num2
    }
    
    return abs(sum1 - sum2)
}
