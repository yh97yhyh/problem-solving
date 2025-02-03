//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/1/24.
//

// 특정한 최단 경로
// 1504

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var graph: [[(Int, Int)]] = Array(repeating: [], count: N+1)
var distances = Array(repeating: -1, count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    let dis = input[2]
    graph[a].append((b, dis))
    graph[b].append((a, dis))
}

let need = readLine()!.split(separator: " ").map { Int(String($0))! }


func dijkstra(_ start: Int) {
    var queue = [(start, 0)]
    
    while true {
        if queue.isEmpty {
            break
        }
    }
}
