//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 양
// 3184

// . 빈 필드
// # 울타리
// o 양
// v 늑대

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }

let r = inputs[0] // row
let c = inputs[1] // column

var graph: [[Character]] = Array(repeating: [], count: r)
var visited: [[Bool]] = Array(repeating: [], count: r)
for i in  0..<r {
    var input = readLine()!
    for chr in input {
        graph[i].append(chr)
        visited[i].append(false)
    }
}

var remainO = 0
var remainV = 0
var oNum = 0
var vNum = 0

func dfs(_ i: Int, _ j: Int) {
    visited[i][j] = true
    
    if graph[i][j] == "o" {
        oNum += 1
    } else if graph[i][j] == "v" {
        vNum += 1
    }
    
    if i+1 < r && graph[i+1][j] != "#" && !visited[i+1][j] { // up
        dfs(i+1, j)
    }
    if i-1 >= 0 && graph[i-1][j] != "#" && !visited[i-1][j]{ // down
        dfs(i-1, j)
    }
    if j+1 < c && graph[i][j+1] != "#" && !visited[i][j+1] { // right
        dfs(i, j+1)
    }
    if j-1 >= 0 && graph[i][j-1] != "#" && !visited[i][j-1] { // right
        dfs(i, j-1)
    }
}


for i in 0..<r {
    for j in 0..<c {
        if graph[i][j] != "#" && visited[i][j] == false {
            dfs(i, j)
//            print(i, j, oNum, vNum)
            if oNum > vNum {
                remainO += oNum
            } else {
                remainV += vNum
            }
            oNum = 0
            vNum = 0
        }
    }
}

print(remainO, remainV)
