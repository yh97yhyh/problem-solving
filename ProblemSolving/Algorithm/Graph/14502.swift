//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/13.
//

// 연구소
// 14502

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0]
let m = inputs[1]
var wallCount = 0

var graph: [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}


func dfs() {
    
}

for i in 0..<m {
    for j in 0..<n {
        if graph[i][j] == 0 {
            
        }
    }
}
