//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/23/24.
//

// 유기농 배추
// 1012

import Foundation

let t = Int(readLine()!)! // 테스트 케이스 개수 T

for _ in 0..<t {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let m = inputs[0] // 가로길이 m
    let n = inputs[1] // 세로길이 n
    let k = inputs[2] // 배추가 심어져 있는 위치의 개수 k
    
    var graph = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for _ in 0..<k {
        let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
        let x = inputs[1]
        let y = inputs[0] // 배추의 위치 x, y
        graph[x][y] = 1
    }
    
    var answer = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 1 && !visited[i][j] {
                dfs(i, j, m, n, &visited, graph)
                answer += 1
            }
        }
    }
    
    print(answer)
    
}

func dfs(_ i: Int, _ j: Int, _ m: Int, _ n: Int, _ visited: inout [[Bool]], _ graph: [[Int]]) {
    
    visited[i][j] = true
    
    let moves = [(-1, 0), (1, 0), (0, -1), (0, 1)] // 상 하 좌 우
    
    for move in moves {
        let next = (i + move.0, j + move.1)
        if next.0 >= 0 && next.0 < n && next.1 >= 0 && next.1 < m {
            if graph[next.0][next.1] == 1 && !visited[next.0][next.1] {
                dfs(next.0, next.1, m, n, &visited, graph)
            }
        }
    }
    
}

