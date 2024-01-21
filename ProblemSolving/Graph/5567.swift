//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/21.
//

// 결혼식
// 5567

import Foundation

let n = Int(readLine()!)! // 상근이 동기 수
let m = Int(readLine()!)! // 리스트 길이

var graph: [[Int]] = Array(repeating: [], count: n+1)
var dist: [Int] = Array(repeating: -1, count: n+1)

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}
//print(graph)

//func dfs(_ x: Int) {
//
//    for y in graph[x] {
//        if dist[y] == 0 && y != 1 {
//            dist[y] = dist[x] + 1
//            dfs(y)
//        }
//    }
//}

func bfs(_ start: Int) {
    var toVisits: [Int] = []
    toVisits.append(start)
    dist[start] = 0
    
    while true {
        if toVisits.isEmpty {
            break
        }
        let x = toVisits.removeFirst()
        for y in graph[x] {
            if dist[y] == -1 {
                toVisits.append(y)
                dist[y] = dist[x] + 1
            }
        }
    }
}

bfs(1)
print(dist.filter { $0 <= 2 && $0 != -1 && $0 != 0 }.count)
