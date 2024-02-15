//
//  maxMin.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Max Min
// https://www.hackerrank.com/challenges/one-month-preparation-kit-angry-children/problem

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {
    // Write your code here
    var result = Int.max
    let len = arr.count
    let sortedfArr = arr.sorted()
    for i in 0...len-k {
        let minNum = sortedfArr[i]
        let maxNum = sortedfArr[i+k-1]
        result = min(result, maxNum - minNum)
    }
    
    return result
}
