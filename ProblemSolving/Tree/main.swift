//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/20.
//

// 부동산 다툼
// 20364

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 땅 갯수
let q = inputs[1] // 오리 수

var owned: [Bool] = Array(repeating: false, count: n+1)
var ducks: [Int] = []
for _ in 0..<q {
    ducks.append(Int(readLine()!)!)
}

func search(_ start: Int) -> Int {
    var current = start
    var firstBlock = 0
    
    while true {
        if current == 1 {
            break
        }
        
        if owned[current] {
            firstBlock = current
        }
        current /= 2
    }
    
    if firstBlock == 0 {
        owned[start] = true
    }
    return firstBlock
}

for duck in ducks {
    print(search(duck))
}
