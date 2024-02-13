//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/15.
//

// 줄 세우기
// 2252

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs1[0]
let m = inputs1[1] // 키를 비교한 횟수

var adj: [[Int]] = Array(repeating: [], count: n+1)
var indeg = Array(repeating: 0, count: n+1) // indegree

for _ in 0..<m {
    let inputs2 = readLine()!.split(separator: " ").map { Int(String($0))! } // a -> b
    let a = inputs2[0]
    let b = inputs2[1]
    adj[a].append(b)
    indeg[b] += 1
}

//print(starts)

var result = ""
func topologicalSort() {
    var queue: [Int] = []
    for i in 1..<n+1 {
        if indeg[i] == 0 {
            queue.append(i)
        }
    }
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let pop = queue.removeFirst()
        result += "\(pop) "
        for nxt in adj[pop] {
            indeg[nxt] -= 1
            if indeg[nxt] == 0 {
                queue.append(nxt)
            }
        }
    }
}

//print(adj)
//print(indeg)
topologicalSort()
print(result)

