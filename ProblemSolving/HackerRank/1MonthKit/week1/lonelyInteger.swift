//
//  lonelyInteger.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Lonely Integer
// https://www.hackerrank.com/challenges/one-month-preparation-kit-lonely-integer/problem

import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    
    var numCount: [Int: Int] = [:]
    
    for n in a {
        if let count = numCount[n] {
            numCount[n] = count+1
        } else {
            numCount[n] = 1
        }
    }
    
    let n = numCount.filter { $0.value == 1 }.keys.first!
    return n
}
