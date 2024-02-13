//
//  pangrams.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Pangrams
// https://www.hackerrank.com/challenges/one-month-preparation-kit-pangrams/problem

import Foundation

func pangrams(s: String) -> String {
    // Write your code here

    var count = Array(repeating: 0, count: 26)
    
    for c in s {
        if c == " " {
            continue
        }
        let n = Int(UnicodeScalar(c.lowercased())!.value)
        count[n-97] += 1
    }
    
    return count.contains(0) ? "not pangram" : "pangram"
}
