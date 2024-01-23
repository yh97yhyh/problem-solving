//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 경로 찾기
// 11403

import Foundation

let n = Int(readLine()!)!

var adj: [[Int]] = []
var graph: [[Int]] = Array(repeating: [], count: n)
for i in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    adj.append(inputs)
    for j in 0..<inputs.count {
        if inputs[j] == 1 {
            graph[i].append(j)
        }
    }
}

//print(graph)

func bfs(_ start: Int) {
    var visited: [Int] = []
    var toVisits: [Int] = []
    
    toVisits.append(start)
//    visited.append(start)
    
    while true {
        if toVisits.isEmpty {
            break
        }
        let x = toVisits.removeFirst()
        for y in graph[x] {
            if !visited.contains(y) {
                toVisits.append(y)
                visited.append(y)
//                print(x, y)
                adj[start][y] = 1
            }
        }
        
    }
}

for i in 0..<n {
//    print("========\(i)========")
    bfs(i)
}

var result = ""
for i in 0..<n {
    for j in 0..<n {
        result += "\(adj[i][j]) "
    }
    result += "\n"
}

print(result)
