//
//  sherlockAndArray.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Sherlock and Array
// https://www.hackerrank.com/challenges/one-month-preparation-kit-sherlock-and-array/problem

import Foundation

func balancedSums(arr: [Int]) -> String {
    // Write your code here
    let len = arr.count
    var leftSum = 0
    var rightSum = arr.reduce(0, +)
    
    for i in 0..<len {
        if i != 0 {
            leftSum += arr[i-1]
        }
        rightSum -= arr[i]
        if leftSum == rightSum {
            return "YES"
        }
    }
    
    return "NO"
}
