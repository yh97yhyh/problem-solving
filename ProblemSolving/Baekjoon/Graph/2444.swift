//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 알고리즘 수업 - 너비 우선 탐색 1
// 24444
// 시간초과 ㅡㅡ

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 정점의 수
let M = input[1] // 간선의 수
let R = input[2] // 시작 정점

var graph: [[Int]] = Array(repeating: [], count: N+1)
var order: [Int] = Array(repeating: -1, count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

for i in 0..<graph.count {
    graph[i].sort()
}

var count = 1
func bfs(_ start: Int) {
    var queue: [Int] = []
    queue.append(start)
    order[start] = 1
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        
        for y in graph[x] {
            if order[y] == -1 {
                count += 1
                queue.append(y)
                order[y] = count
            }
        }
    }
}

bfs(R)
var answer = ""
for i in 0..<order.count {
    if i != 0 {
        let num = order[i]
        if num != -1 {
            answer += "\(num)\n"
        } else {
            answer += "0\n"
        }
    }
}
print(answer)
