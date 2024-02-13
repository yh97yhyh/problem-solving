//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/26.
//

// 케빈 베이컨의 6단계 법칙
// 1389

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 유저의 수
let m = inputs[1] // 친구 관계의 수

var graph: [[Int]] = Array(repeating: [], count: n+1)
for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

func bfs(_ start: Int) -> Int {
    var distances = Array(repeating: 0, count: n+1)
    var queue: [Int] = []
    queue.append(start)
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        for y in graph[x] {
            if y != start && distances[y] == 0 {
                distances[y] = distances[x] + 1
                queue.append(y)
            }
        }
    }
    
    return distances.reduce(0, +)
}

var bacons: [Int] = []
for i in 1...n {
    bacons.append(bfs(i))
}
print(bacons.firstIndex(of: bacons.min()!)!+1)
