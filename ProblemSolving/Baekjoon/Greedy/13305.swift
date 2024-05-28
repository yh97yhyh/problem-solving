//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/28/24.
//

// 13305
// 주유소

import Foundation

let N = Int(readLine()!)! // 도시 갯수

let distances = readLine()!.split(separator: " ").map { Int(String($0))! }
let costs = readLine()!.split(separator: " ").map { Int(String($0))! }
var minCost = costs[0]

var answer = 0

for i in 0..<N-1 {
    let curCost = costs[i]
    let distance = distances[i]
    
    if minCost > curCost {
        minCost = curCost
    }
    
    answer += minCost * distance
}

print(answer)
