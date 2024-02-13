//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/19.
//

// 바이러스
// 2606

import Foundation

var n = Int(readLine()!)! // 컴퓨터 수
var connected = Int(readLine()!)! // 네트워크 상에서 직접 연결되어 있는 컴퓨터 쌍의 수

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited = Array(repeating: false, count: n+1)
for _ in 0..<connected {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

func dfs(_ x: Int) {
    visited[x] = true
    
    for y in graph[x] {
        if !visited[y] {
            dfs(y)
        }
    }
}

dfs(1)
print((visited.filter { $0 }.count)-1)
