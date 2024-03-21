//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// 네트워크
// https://school.programmers.co.kr/learn/courses/30/lessons/43162

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var adj: [[Int]] = Array(repeating: [], count: n+1)
    for i in 0..<computers.count {
        let computer = computers[i]
        let a = i+1
        for j in 0..<computer.count {
            let b = j+1
            if a == b {
                continue
            }
            if computer[j] == 1 {
                adj[a].append(b)
            }
        }
    }
    
    network = adj
    visited = Array(repeating: false, count: n+1)
    
    for i in 1...n {
        if !visited[i] {
            dfs(i)
            result += 1
        }
    }
    
    return result
}

var network: [[Int]] = []
var visited: [Bool] = []
var result = 0

func dfs(_ i: Int) {
    visited[i] = true
    for y in network[i] {
        if !visited[y] {
            dfs(y)
        }
    }
}
