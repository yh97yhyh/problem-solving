//
//  equalStack.swift
//  ProblemSolving
//
//  Created by 영현 on 2/19/24.
//

// Equal Stack
// https://www.hackerrank.com/challenges/one-month-preparation-kit-equal-stacks

import Foundation

func equalStacks(h1: [Int], h2: [Int], h3: [Int]) -> Int {
    // Write your code here
    var h1 = h1
    var h2 = h2
    var h3 = h3
    var sumH1 = h1.reduce(0, +)
    var sumH2 = h2.reduce(0, +)
    var sumH3 = h3.reduce(0, +)
    
    while true {
        if sumH1 == sumH2 && sumH2 == sumH3{
            break
        }
        
        let minSum = min(sumH1, sumH2, sumH3)
        
        if sumH1 > minSum {
            sumH1 -= h1.first!
            h1.removeFirst()
        }
        
        if sumH2 > minSum {
            sumH2 -= h2.first!
            h2.removeFirst()
        }
        
        if sumH3 > minSum {
            sumH3 -= h3.first!
            h3.removeFirst()
        }
    }
        
    return sumH1
}
