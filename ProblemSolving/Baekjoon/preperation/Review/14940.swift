//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/11/24.
//

// 쉬운 최단거리
// 14940

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 세로
let m = input[1] // 가로

var graph: [[Int]] = []
var isSetStart = false
var start = (0, 0)

for x in 0..<n {
    let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph.append(input1)
    
    if isSetStart {
        continue
    }
    if let y = input1.firstIndex(of: 2) {
        start = (x, y)
        isSetStart = true
    }
}

var distances: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
var moves = [(1, 0), (-1, 0), (0, -1), (0, 1)]

func bfs() {
    var queue = [start]
    distances[start.0][start.1] = 0
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        
        for move in moves {
            let y = (x.0 + move.0, x.1 + move.1)
            if y.0 >= 0 && y.0 < n && y.1 >= 0 && y.1 < m {
                if graph[y.0][y.1] == 0 {
                    continue
                }
                
                if distances[y.0][y.1] == -1 {
                    distances[y.0][y.1] = distances[x.0][x.1] + 1
                    queue.append(y)
                }
            }
        }
    }
}

bfs()

var answer = ""
for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 0 {
            answer += "0 " // 출력할 때 처리해줘야 함
        } else {
            answer += "\(distances[i][j]) "
        }
    }
    answer += "\n"
}
print(answer)
