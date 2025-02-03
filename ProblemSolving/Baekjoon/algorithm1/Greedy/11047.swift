//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/1/24.
//

// 동전 0
// 11047

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let K = input[1]

var coins: [Int] = []
for _ in 0..<N {
    coins.append(Int(readLine()!)!)
}
coins.reverse()

var cur = 0
var answer = 0

for i in 0..<coins.count {
    let coin = coins[i]
    if cur + coin > K {
        continue
    } else {
        let count = (K - cur) / coin
        cur += coin * count
        answer += count
    }
    if cur == K {
        break
    }
}

print(answer)
