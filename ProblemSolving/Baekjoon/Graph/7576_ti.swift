//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/24/24.
//

// 토마토
// 7576
// 시간초과 개선

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0] // 상자 가로 칸 수
let n = input[1] // 세로 칸 수

var graph: [[Int]] = []
var dist = Array(repeating: Array(repeating: -1, count: m), count: n)

for _ in 0..<n {
    // 익은 토마토 1, 익지 않은 토마토 0, 토마토X -1
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var toVisits: [(Int, Int)] = []

func bfs() {
    let moves = [(-1, 0), (1, 0), (0, -1), (0, 1)]
    
    var head = 0
    while true {
        
        if head >= toVisits.count {
            break
        }
        let cur = toVisits[head]
        head += 1
        
        for move in moves {
            let next = (cur.0 + move.0, cur.1 + move.1)
            if (next.0 >= 0 && next.0 < n && next.1 >= 0 && next.1 < m) && graph[next.0][next.1] == 0 && dist[next.0][next.1] == -1 {
                toVisits.append(next)
                dist[next.0][next.1] = dist[cur.0][cur.1] + 1
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 1 {
            toVisits.append((i, j))
            dist[i][j] = 0
        }
    }
}

bfs()

var answer = 0
var isCan = true
for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 0 && dist[i][j] == -1 {
            isCan = false
            print(-1)
            break
        }
        answer = max(dist[i][j], answer)
    }
    if !isCan {
        break
    }
}

if isCan {
    print(answer)
}


