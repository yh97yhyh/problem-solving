//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/20.
//

// 나무 탈출
// 15900

import Foundation

let n = Int(readLine()!)!
var leaves: [Int] = []
var tree: [[Int]] = Array(repeating: [], count: n+1)
var dist = Array(repeating: 0, count: n+1)

for _ in 0..<n-1 {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    tree[a].append(b)
    tree[b].append(a)
}

for i in 0..<tree.count {
    if tree[i].count == 1{
        leaves.append(i)
    }
}


func dfs(_ x: Int, _ par: Int) {
    for y in tree[x] {
        if dist[y] == 0 && y != par {
            dist[y] = dist[x] + 1
            dfs(y, x)
        }
    }
}

dfs(1, 0)
//print(dist)

var distances = 0
for i in leaves {
    distances += dist[i]
}

if distances % 2 == 0 {
    print("No")
} else {
    print("Yes")
}
