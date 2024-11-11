//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/11/24.
//

// DFS와 BFS
// 1260

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let v = input[2]

var graph : [[Int]] = Array(repeating: [], count: n+1)
var dfsVisited = Array(repeating: false, count: n+1)
var bfsVisited = Array(repeating: false, count: n+1)

var dfsAnswer = ""
var bfsAnswer = ""

for _ in 0..<m {
    let ab = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = ab[0]
    let b = ab[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

for i in 1...n {
    graph[i].sort()
}
//print(graph)

func dfs(_ x: Int) {
    dfsVisited[x] = true
    dfsAnswer += "\(x) "
    let ys = graph[x]
    
    for y in ys {
        if !dfsVisited[y] {
            dfs(y)
        }
    }
}

func bfs() {
    var queue = [v]
    bfsVisited[v] = true
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        let ys = graph[x]
        bfsAnswer += "\(x) "
        
        for y in ys {
            if !bfsVisited[y] {
                queue.append(y)
                bfsVisited[y] = true
            }
        }
        
    }
}

dfs(v)
bfs()

print(dfsAnswer)
print(bfsAnswer)
