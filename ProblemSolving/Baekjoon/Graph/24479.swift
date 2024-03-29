//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 알고리즘 수업 - 깊이 우선 탐색 1
// 24479

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 정점의 수
let M = input[1] // 간선의 수
let R = input[2] // 시작 정점

var graph: [[Int]] = Array(repeating: [], count: N+1)
var order: [Int] = Array(repeating: -1, count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

for i in 0..<graph.count {
    graph[i].sort()
}

var count = 0
func dfs(_ x: Int) {
    count += 1
    order[x] = count
    
    for y in graph[x] {
        if order[y] == -1 {
            dfs(y)
        }
    }
}

dfs(R)

for i in 0..<order.count {
    if i != 0 {
        print(order[i] != -1 ? "\(order[i])" : "0")
    }
}
