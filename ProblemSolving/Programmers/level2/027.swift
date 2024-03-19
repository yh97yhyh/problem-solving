//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/19/24.
//

// 피로도
// https://school.programmers.co.kr/learn/courses/30/lessons/87946
// 완전탐색, DFS

import Foundation

func solution(_ k:Int, _ dungeons1:[[Int]]) -> Int {
    dungeons = dungeons1
    len = dungeons.count
    visited = Array(repeating: false, count: len)
    dfs(0, k, 0)
    
    return result
}

var result = 0
var dungeons: [[Int]] = []
var len = 0
var visited: [Bool] = []

func dfs(_ n: Int, _ remain: Int, _ cnt: Int) {
    if remain >= 0 {
        // print(visited)
        result = max(result, cnt)
    }
    
    for i in 0..<len {
        let need = dungeons[i][0]
        let use = dungeons[i][1]
        
        if !visited[i] && remain >= need {
            visited[i] = true
            dfs(n, remain - use, cnt + 1)
            visited[i] = false
        }
    }
}
