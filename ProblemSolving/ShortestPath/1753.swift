//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/16.
//

// 최단경로
// 1753
// 2% 시간초과

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = inputs[0] // 정점 개수
let e = inputs[1] // 간선 개수
var start = Int(readLine()!)! // 시작 점

var adj: [[(Int, Int)]] = Array(repeating: [], count: v+1)
var distances: [Int] = []
for _ in 0..<e {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = inputs[0]
    let to = inputs[1]
    let dist = inputs[2]
    adj[from].append((to, dist))
}

for i in 0..<v+1 {
    adj[i].sort(by: { $0.1 < $1.1 })
    
    if i == 0 || i == start {
        distances.append(0)
    } else {
        distances.append(Int.max)
    }
}

func dijkstra(_ start: Int) {
    var toViists = [(start, 0)]
    
    while true {
        if toViists.isEmpty {
            break
        }
        
        let x = toViists.removeFirst()
        let xNode = x.0
        
        for y in adj[xNode] {
            let newDistance = distances[xNode] + y.1
            if newDistance < distances[y.0] {
                distances[y.0] = newDistance
                toViists.append(y)
            }
        }
    }
}

dijkstra(start)
print(adj)

for i in 1..<v+1 {
    if distances[i] == Int.max {
        print("INF")
    } else {
        print(distances[i])
    }
}
