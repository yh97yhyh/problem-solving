//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/15/24.
//

// 택배 배송
// 5972
// 1 -> n

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var graph: [[(next: Int, cost: Int)]] = Array(repeating: [], count: n+1)
var costs = Array(repeating: Int.max, count: n+1)

let start = 1
let end = n

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    let c = input[2]
    graph[a].append((next: b, cost: c))
    graph[b].append((next: a, cost: c))
}

// 시간복잡도 해결
for i in 0..<n+1 {
    graph[i].sort(by: {$0.cost < $1.cost} )
}
costs[start] = 0

func dijkstra(_ start: Int) {
    var queue: [(node: Int, cost: Int)] = [(node: start, cost: 0)]
    
    while true {
        if queue.isEmpty {
            break
        }
        queue.sort { $0.cost < $1.cost } // 시간복잡도 해결
        
        let cur = queue.removeFirst()
        let x = cur.node
        
        for y in graph[x] {
            let nextNode = y.next
            let nextCost = y.cost
            let newCost = costs[x] + nextCost
            
            if newCost < costs[nextNode] {
                costs[nextNode] = newCost
                queue.append((node: nextNode, cost: newCost)) // newCost로!
            }
        }
    }
}

dijkstra(start)
print(costs[end])
