//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/13.
//

// 미로 탐색
// 2178

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0]
let m = inputs[1]

var graph: [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var result = 0

for _ in 0..<n {
    graph.append(readLine()!.map{ Int(String($0))! })
}

//print(graph)

func bfs() {
    let directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    var needVisited: [[Int]] = [[0, 0, 1]] // 시작 위치와 거리를 함께 저장
    visited[0][0] = true
    
    while true {
        if needVisited.isEmpty {
            break
        }
        
        let pop = needVisited.removeFirst()
        let popX = pop[0]
        let popY = pop[1]
        let distance = pop[2]
        
        if popX == n-1 && popY == m-1 { // 목적지에 도달하면 종료
            result = distance
            break
        }
        
        for direction in directions {
            let nextX = popX + direction[0]
            let nextY = popY + direction[1]
            
            if nextX >= 0 && nextX < n && nextY >= 0 && nextY < m && graph[nextX][nextY] == 1 && !visited[nextX][nextY] {
                visited[nextX][nextY] = true
                needVisited.append([nextX, nextY, distance + 1])
            }
        }
    }
}

bfs()
print(result)

//bfs()
//print(result)
