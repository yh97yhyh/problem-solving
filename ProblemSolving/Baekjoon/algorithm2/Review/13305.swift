//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/10/24.
//

// 주유소
// 13305

import Foundation

let n = Int(readLine()!)! // 도시 개수
let lens = readLine()!.split(separator: " ").map { Int(String($0))! } // 두 도시를 연결하는 도로의 길이
var costs = readLine()!.split(separator: " ").map { Int(String($0))! } // 주유소의 리터당 가격

var cost = 0
var minCost = costs[0]

for i in 0..<n-1 {
    if costs[i] < minCost {
        minCost = costs[i]
    }
    cost += minCost * lens[i]
}
print(cost)

//costs.removeLast()
//
//var remainLen = lens.reduce(0, +)
//var cost = 0
//var i = 0
//
//while true {
//    if remainLen == 0 || i == n-1 {
//        break
//    }
//    
//    let curCost = costs[i]
//    let curLen = lens[i]
//    if curCost == costs.min()! {
//        cost += curCost * remainLen
//        remainLen = 0
//        i = n-1
//    } else {
//        cost += curCost * curLen
//        remainLen -= curLen
//        costs[i] = Int.max
//        i += 1
//    }
//}
//
//print(cost)
