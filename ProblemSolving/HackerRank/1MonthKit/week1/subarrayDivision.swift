//
//  subarrayDivision.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Subarray Division 1
// https://www.hackerrank.com/challenges/one-month-preparation-kit-the-birthday-bar/problem

import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    let len = s.count
    var count = 0
    
    for i in 0...len-m {
        let arr = s[i..<i+m]
        if arr.reduce(0, +) == d {
            print(arr)
            count += 1
        }
    }
    
    return count
}
