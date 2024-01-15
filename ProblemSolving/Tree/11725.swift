//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/15.
//

// 트리의 부모 찾기
// 11725

import Foundation

let n = Int(readLine()!)!

var adj: [[Int]] = Array(repeating: [], count: n+1)
//var visited = Array(repeating: false, count: n+1)
var parent = Array(repeating: 0, count: n+1)

for _ in 0..<n-1 {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    adj[a].append(b)
    adj[b].append(a)
}

func dfs(_ x: Int, _ par: Int) {
    for y in adj[x] {
        if y == par {
            continue
        }
        parent[y] = x
        dfs(y, x)
    }
}

dfs(1, 0)

//print(perent)

for i in 2..<n+1 {
    print(parent[i])
}

