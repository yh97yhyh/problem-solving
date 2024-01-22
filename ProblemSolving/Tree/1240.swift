//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/22.
//

// 노드사이의 거리
// 1240

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 노드의 개수
let m = inputs[1] // 노드의 쌍 개수

var tree: [[(Int, Int)]] = Array(repeating: [], count: n+1)
for _ in 0..<n-1 {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    let c = inputs[2] // 거리
    tree[a].append((b, c))
    tree[b].append((a, c))
}

var toSolves: [(Int, Int)] = []
for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    toSolves.append((inputs[0], inputs[1]))
}

func bfs(_ start: Int, _ end: Int) -> Int {
    var dists = Array(repeating: -1, count: n+1)
    dists[start] = 0
    var toVisits: [Int] = []
    toVisits.append(start)
    
    while true {
        if toVisits.isEmpty {
            break
        }
        let x = toVisits.removeFirst()
        
        if x == end {
            break
        }
        
        for i in 0..<tree[x].count {
            let y = tree[x][i]
            if dists[y.0] == -1 {
                toVisits.append(y.0)
                dists[y.0] = dists[x] + y.1
            }
        }
    }
    
    return dists[end]
}

for toSolve in toSolves {
    print(bfs(toSolve.0, toSolve.1))
}

