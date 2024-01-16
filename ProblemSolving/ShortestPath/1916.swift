//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/16.
//

// 최소비용 구하기
// 1916
// 테스트케이스 모음 https://www.acmicpc.net/board/view/129219

import Foundation

let n = Int(readLine()!)! // 도시의 개수
let m = Int(readLine()!)! // 버스의 개수

var adj:[[(Int, Int)]] = Array(repeating: [], count: n+1)

var distances: [Int] = []

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = inputs[0]
    let to = inputs[1]
    let dist = inputs[2]
    adj[from].append((to, dist))
}

// 시간초과 해결 2
for i in 0..<n+1 {
    adj[i].sort(by: { $0.1 < $1.1 } )
}

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let start = inputs[0] // 1이 아닐 수도 있음
let end = inputs[1]

for i in 0..<n+1 {
    if i == 0 || i == start {
        distances.append(0)
    } else {
        distances.append(Int.max)
    }
}

func dijkstra(_ start: Int) {
    var toVisits = [(start, 0)]
    
    while true {
        if toVisits.isEmpty {
            break
        }
        
        let x = toVisits.removeFirst()
        let xNode = x.0
        
        for y in adj[xNode] {
            let newDistance = distances[xNode] + y.1
            if newDistance < distances[y.0] { // 시간초과 해결 1
                distances[y.0] = min(distances[y.0], newDistance)
                toVisits.append(y)
            }
        }
        
    }
}

dijkstra(start)
print(distances[end])
