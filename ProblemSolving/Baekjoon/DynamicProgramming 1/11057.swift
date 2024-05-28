//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/17.
//

// 오르막 수
// 11057
// 테스트케이스 https://www.acmicpc.net/board/view/93128

import Foundation

let n = Int(readLine()!)!

//var finish = Int(pow(10.0, n))

var result = 0
var dy: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: n+1)


func dp() {
    for i in 0...9 {
        dy[1][i] = 1
    }
    
    if n == 1 {
        return
    }
    
    for i in 2...n {
        for j in 0...9 {
            if j == 0 {
                dy[i][0] = 1
                continue
            }
            dy[i][j] = (dy[i-1][j] + dy[i][j-1]) % 10007
        }
    }
}

dp()
//print(dy)
print((dy[n].reduce(0, +)) % 10007)
