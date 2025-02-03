//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/13/24.
//

// 진우의 달 여행
// 17484

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1] // 행렬 크기 n x m

var arr: [[Int]] = []

let moves = [(1, -1), (1, 0), (1, 1)]

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var minCost = Int.max
var minCosts: [Int] = []

func recur(_ pre: Int, pos: (Int, Int), curCost: Int) {
    if pos.0 == n-1 {
//        print(curCost)
        minCost = min(minCost, curCost)
        return
    }
    
    for i in 0..<3 {
        if i == pre {
            continue
        }
        let next = (pos.0 + moves[i].0, pos.1 + moves[i].1)
        if next.0 >= 0 && next.0 < n && next.1 >= 0 && next.1 < m {
            let cost = arr[next.0][next.1]
            recur(i, pos: next, curCost: curCost + cost)
        }
    }
}

for i in 0..<m {
    let pos = (0, i)
    let cost = arr[0][i]
    minCost = Int.max
    recur(-1, pos: pos, curCost: cost)
    minCosts.append(minCost)
}

//print("============")
print(minCosts.min()!)
