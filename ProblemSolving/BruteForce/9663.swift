//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/18.
//

// N-Queen
// 9663

import Foundation

let n = Int(readLine()!)!
var cols = Array(repeating: -1, count: n+1)
var answer = 0

func attackable(r1: Int, c1: Int, r2: Int, c2: Int) -> Bool {
    if c1 == c2 { // 같은 열
        return true
    } else if r1-c1 == r2-c2 { // 왼쪽 위에서 오른쪽 아래로 향하는 대각선
        return true
    } else if r1+c1 == r2+c2 { // 왼쪽 아래에서 오른쪽 위로 향하는 대각선
        return true
    } else {
        return false
    }
}

func recur(_ row: Int) {
    if row == n+1 {
        answer += 1
        return
    }
    
    for c in 1...n {
        var possible = true
        for i in 1..<row {
            if attackable(r1: row, c1: c, r2: i, c2: cols[i]) {
                possible = false
                break
            }
            print(row, c, i, cols[i], possible)
        }
        if possible {
            cols[row] = c
            recur(row+1)
            cols[row] = 0
        }
    }
}

recur(1)
print(answer)
