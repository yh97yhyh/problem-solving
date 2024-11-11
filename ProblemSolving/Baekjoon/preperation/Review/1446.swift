//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/12/24.
//

// 지름길
// 1446

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 지름길 개수
let d = input[1] // 고속도로 길이

var adj: [[(Int, Int)]] = Array(repeating: [], count: d+1) // (다음 노드, 거리)
var distances = Array(repeating: Int.max, count: d+1)
distances[0] = 0

// 지름길 처리
for i in 0..<n {
    // 시작위치, 도착위치, 지름길 길이
    let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = input1[0]
    let to = input1[1]
    let dist = input1[2]
    
    if to > d {
        continue
    }
    
    adj[from].append((to, dist))
}

// 일반 도로 처리
for i in 0..<d {
    adj[i].append((i+1, 1))
}

func dijkstra(_ start: Int) {
    var queue = [(start, 0)]
    
    while true {
        if queue.isEmpty {
            break
        }
        queue.sort { $0.1 < $1.1 } // 다익스트라에서 우선순위 큐 역할을 함
        
        let x = queue.removeFirst()
        let xNode = x.0
        
        for y in adj[xNode] {
            let newDistance = distances[xNode] + y.1
            if newDistance < distances[y.0] {
                distances[y.0] = newDistance
                queue.append(y)
            }
        }
    }
}


dijkstra(0)
print(distances[d])
