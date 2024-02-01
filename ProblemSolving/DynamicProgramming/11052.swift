//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/01.
//

// 카드 구매하기
// 11052

import Foundation

let n = Int(readLine()!)!
let cardPrices = readLine()!.split(separator: " ").map { Int(String($0))! }
var dy: [Int] = Array(repeating: 0, count: n+1)

func dp() {
    for i in 1...n {
        for j in 1...i {
            dy[i] = max(dy[i], dy[i-j] + cardPrices[j-1])
        }
    }
}

dp()
print(dy[n])
