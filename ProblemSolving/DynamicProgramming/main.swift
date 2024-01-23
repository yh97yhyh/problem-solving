//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 트리와 쿼리
// 15681
// DP 풀이

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 트리의 정점 수
let r = inputs[1] // 루트 번호
let q = inputs[2] // 쿼리의 수

var graph: [[Int]] = Array(repeating: [], count: n+1)
var tree: [[Int]] = Array(repeating: [], count: n+1)
var dy: [Int] = Array(repeating: 1, count: n+1)
for _ in 0..<n-1 {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

var us: [Int] = []
for _ in 0..<q {
    us.append(Int(readLine()!)!)
}

var visited = Array(repeating: false, count: n+1)
func dfs(_ x: Int, _ parent: Int) {
    visited[x] = true
    
    for y in graph[x] {
        if y != parent && !visited[y] {
            dfs(y, x)
            dy[x] += dy[y]
        }
    }
}

dfs(r, -1)

print(dy)
for u in us {
    print(dy[u])
}
