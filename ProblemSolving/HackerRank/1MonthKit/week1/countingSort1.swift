//
//  countingSort.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Counting Sort 1
// https://www.hackerrank.com/challenges/one-month-preparation-kit-countingsort1/problem

import Foundation

func countingSort(arr: [Int]) -> [Int] {
    // Write your code here

    var result = Array(repeating: 0, count: 100)
    
    for n in arr {
        result[n] += 1
    }
    
    return result
}
