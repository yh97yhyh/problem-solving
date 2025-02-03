//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/17/24.
//

// 지름길
// 1446

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 지름길의 개수
let d = input[1] // 고속도로 길이

var adj:[[(Int, Int)]] = Array(repeating: [], count: d+1)
var distances = Array(repeating: Int.max, count: d+1)
distances[0] = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = input[0] // 지름길 시작 위치
    let to = input[1] // 도착 위치
    if to > d {
        continue
    }
    let dist = input[2] // 지름길 길이
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
        queue.sort { $0.1 < $1.1 }
        
        let x = queue.removeFirst()
        let xNode = x.0
        
        for y in adj[xNode]  {
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
