//
//  salesByMatch.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Sales by Match
// https://www.hackerrank.com/challenges/one-month-preparation-kit-sock-merchant/problem

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var count: [Int: Int] = [:]
    var result = 0
    
    for a in ar {
        if let value = count[a] {
            count[a] = value + 1
        } else {
            count[a] = 1
        }
    }
    
    
    for c in Array(count.values) {
        result += c / 2
    }
    
    return result
}
