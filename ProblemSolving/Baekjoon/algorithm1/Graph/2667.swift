//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/13.
//

// 2667
// 단지번호붙이기

import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: n)

for i in 0..<n {
    graph.append(readLine()!.map{ Int(String($0))! })
}

var result: [Int] = []
var num = 0

func dfs(_ i: Int, _ j: Int) {
    num += 1
    visited[i][j] = true
    
    if j+1 < n && graph[i][j+1] == 1 && !visited[i][j+1] { // up
        dfs(i, j+1)
    }
    if j-1 >= 0 && graph[i][j-1] == 1 && !visited[i][j-1] { // down
        dfs(i, j-1)
    }
    if i-1 >= 0 && graph[i-1][j] == 1 && !visited[i-1][j] { // left
        dfs(i-1, j)
    }
    if i+1 < n && graph[i+1][j] == 1 && !visited[i+1][j] { // right
        dfs(i+1, j)
    }
        
}

for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j] && graph[i][j] == 1 {
            num = 0
            dfs(i, j)
            result.append(num)
        }
    }
}

//print(result)
result.sort()
print(result.count)
for n in result {
    print(n)
}
