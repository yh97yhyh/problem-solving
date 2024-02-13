//
//  miniMaxSum.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Mini-Max Sum
// https://www.hackerrank.com/challenges/one-month-preparation-kit-mini-max-sum/problem

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here

    let ascendings = arr.sorted()
    
    let min = Array(ascendings.prefix(4)).reduce(0, +)
    let max = Array(ascendings.suffix(4)).reduce(0, +)
    
    print("\(min) \(max)")
}
