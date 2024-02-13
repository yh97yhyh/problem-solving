//
//  flippingBits.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Flipping bits
// https://www.hackerrank.com/challenges/one-month-preparation-kit-flipping-bits/problem

import Foundation

func flippingBits(n: Int) -> Int {
    // Write your code here
    
    let flippedBits = ~UInt32(n)
    return Int(flippedBits)
}
