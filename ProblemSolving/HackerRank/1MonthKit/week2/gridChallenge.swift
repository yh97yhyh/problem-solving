//
//  gridChallenge.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Grid Challenge
// https://www.hackerrank.com/challenges/one-month-preparation-kit-grid-challenge/problem

import Foundation

func gridChallenge(grid: [String]) -> String {
    // Write your code here
    let xLen = grid.count
    let yLen = grid[0].count
    
    var newGrid: [String] = []
    
    for i in 0..<xLen {
        let str = grid[i]
        newGrid.append(String(str.sorted()))
    }
    
    for i in 0..<yLen {
        var pre = "a"
        for j in 0..<xLen {
            let str = newGrid[j]
            let index = str.index(str.startIndex, offsetBy: i)
            let s = String(str[index])
            if pre > s {
                return "NO"
            }
            pre = s
        }
    }
    return "YES"
}
