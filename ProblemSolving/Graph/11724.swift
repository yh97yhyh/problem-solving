//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/19.
//

// 11724
// 연결 요소의 개수

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 정점의 개수
let m = inputs[1] // 간선의 개수

var graph : [[Int]] = Array(repeating: [], count: n+1)

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

var totalVisited = Array(repeating: false, count: n+1)
var visitied = Array(repeating: false, count: n+1)
var result = 0
func dfs(_ x: Int) {
    visitied[x] = true
    totalVisited[x] = true
    
    for y in graph[x] {
        if !visitied[y] {
            dfs(y)
        }
    }
}


for i in 1...n {
    if totalVisited[i] == false {
        visitied = Array(repeating: false, count: n+1)
        dfs(i)
        result += 1
    }
}

print(result)
