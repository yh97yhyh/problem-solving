//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/17.
//

// 2xn 타일링
// 11726

import Foundation

let n = Int(readLine()!)!

var dy = Array(repeating: 0, count: 1001)

func dp() {
    if n <= 2 {
        dy[n] = n
        return
    } else {
        dy[1] = 1
        dy[2] = 2
    }

    for i in 3...n {
        dy[i] = (dy[i-1] + dy[i-2]) % 10007
    }
}

dp()
print(dy[n])
