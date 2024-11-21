//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/21/24.
//

// 택배 배송
// 5972
// 양방향 길

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 1 -> n
let m = input[1]
var graph: [[(Int, Int)]] = Array(repeating: [], count: n+1)
var dist = Array(repeating: Int.max, count: n+1)

for i in 0..<m {
    let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input1[0]
    let b = input1[1]
    let c = input1[2]
    
    graph[a].append((b, c))
    graph[b].append((a, c))
}
//print(graph)

func dijkstra() {
    var queue = [(1, 0)] // 큐를 (node, dist)로 설정하기!
    dist[1] = 0
    
    while true {
        if queue.isEmpty {
            break
        }
        queue.sort(by: { $0.1 < $1.1 })
        
        let (xNode, xDist) = queue.removeFirst()
        
        for (yNode, weight) in graph[xNode] {
            let newDist = xDist + weight
            if newDist < dist[yNode] {
                dist[yNode] = newDist
                queue.append((yNode, newDist))
            }
        }
    }
}

dijkstra()
print(dist[n])
