//
//  permutingTwoArrays.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Permuting Two Arrays
// https://www.hackerrank.com/challenges/one-month-preparation-kit-two-arrays/problem

import Foundation

func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    // Write your code here

    let arr = A.sorted()
    let brr = B.sorted(by: >)
    
    for i in 0..<arr.count {
        let sum = arr[i] + brr[i]
        if sum < k {
            return "NO"
        }
    }
    
    return "YES"
}
