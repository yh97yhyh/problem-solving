//
//  towerBreakers.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Twoer Breakers
// https://www.hackerrank.com/challenges/one-month-preparation-kit-tower-breakers-1/problem

import Foundation

func towerBreakers(n: Int, m: Int) -> Int {
    // Write your code here
    if m == 1 {
        return 2
    }
    return n % 2 == 0 ? 2 : 1
}
