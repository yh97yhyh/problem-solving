//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/19.
//

// 촌수계산
// 2644

import Foundation

let n = Int(readLine()!)! // 전체 사람의 수
let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = inputs[0]
let b = inputs[1]
let m = Int(readLine()!)! // 관계의 수

var graph: [[Int]] = Array(repeating: [], count: n+1)
//var visited = Array(repeating: false, count: n+1)
var dist = Array(repeating: -1, count: n+1)

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

func bfs(_ start: Int) {
    var toVisits: [Int] = []
    toVisits.append(start)
//    visited[start] = true
    dist[start] = 0
    
    while true {
        if toVisits.isEmpty {
            break
        }
        
        let pop = toVisits.removeFirst()
        
        if pop == b {
            break
        }
        
        for y in graph[pop] {
//            if !visited[y] {
                if dist[y] == -1 {
                    toVisits.append(y)
//                    visited[y] = true
                    dist[y] = dist[pop]+1
                }
//            }
        }
    }
}

bfs(a)
//print(dist)
print(dist[b])
