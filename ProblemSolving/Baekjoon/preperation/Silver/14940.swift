//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/15/24.
//

// 쉬운 최단거리
// 14940

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 세로
let m = input[1] // 가로

var graph: [[Int]] = []
var distances = Array(repeating: Array(repeating: -1, count: m), count: n)
var start = (0, 0)
var isSetStart = false
for i in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    
    if isSetStart {
        continue
    }
    for j in 0..<m {
        if graph[i][j] == 2 {
            start = (i, j)
            isSetStart = true
        }
    }
}

let moves = [(0, 1), (0, -1), (-1, 0), (1, 0)]
func bfs(_ start: (Int, Int)) {
    var toVisits: [(Int, Int)] = []
    toVisits.append(start)
    distances[start.0][start.1] = 0
    
    while true {
        if toVisits.isEmpty {
            break
        }
        
        let x = toVisits.removeFirst()
        
        for move in moves {
            let y = (x.0 + move.0, x.1 + move.1)
            if y.0 >= 0 && y.1 >= 0 && y.0 < n && y.1 < m && distances[y.0][y.1] == -1 && graph[y.0][y.1] == 1 {
                toVisits.append((y.0, y.1))
                distances[y.0][y.1] = distances[x.0][x.1] + 1
                
            }
        }
    }
}

bfs(start)

var answer = ""
for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 0 {
            answer += "0 "
        } else {
            answer += "\(distances[i][j]) "
        }
    }
    answer += "\n"
}
print(answer)
