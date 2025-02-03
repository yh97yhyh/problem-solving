//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/16/24.
//

// 멀티버스 1
// 18868
// 97퍼에서 틀림

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = inputs[0] // 우주의 개수
let n = inputs[1] // 행성의 개수

var orders: [[Int]] = []
for _ in 0..<m {
    var indicies = Array(0..<n)
    let planets = readLine()!.split(separator: " ").map { Int(String($0))! }
    indicies.sort { planets[$0] < planets[$1] }
    orders.append(indicies)
}

var result = 0
for i in 0..<orders.count-1 {
    for j in i+1..<orders.count {
        if orders[i] == orders[j] {
            result += 1
        }
    }
}

print(result)
