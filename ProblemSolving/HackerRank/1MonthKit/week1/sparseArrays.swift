//
//  sparseArrays.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Sparse Arrays
// https://www.hackerrank.com/challenges/one-month-preparation-kit-sparse-arrays/problem

import Foundation

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    // Write your code here
    
    let len = queries.count
    var result = Array(repeating: 0, count: len)
    
    for str in strings {
        for i in 0..<len {
            if str == queries[i] {
                result[i] += 1
            }
        }
    }

    return result
}
