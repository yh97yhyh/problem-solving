//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 트리와 쿼리
// 15681
// bfs, dfs 활용 시간 초과

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 트리의 정점 수
let r = inputs[1] // 루트 번호
let q = inputs[2] // 쿼리의 수

var graph: [[Int]] = Array(repeating: [], count: n+1)
var tree: [[Int]] = Array(repeating: [], count: n+1)
var pars = Array(repeating: 0, count: n+1)
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

// make tree
func bfs(_ start: Int) {
    var visited = Array(repeating: false, count: n+1)
    var toVisits: [Int] = []
    toVisits.append(start)
    visited[start] = true
    
    while true {
        if toVisits.isEmpty {
            break
        }
        let x = toVisits.removeFirst()
        for y in graph[x]  {
            if !visited[y] {
                toVisits.append(y)
                visited[y] = true
                tree[x].append(y)
            }
        }
    }
}

// dfs
var dfsVisited = Array(repeating: false, count: n+1)
var dfsCount = 1
func dfs(_ x: Int) {
    dfsVisited[x] = true
    
    for y in tree[x] {
        if !dfsVisited[y] {
            dfs(y)
            dfsCount += 1
        }
    }
}

bfs(r)
for u in us {
    dfs(u)
    print(dfsCount)
    dfsVisited = Array(repeating: false, count: n+1)
    dfsCount = 1
}

