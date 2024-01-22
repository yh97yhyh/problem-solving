//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/22.
//

// 음악프로그램
// 2623

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 가수의 수
let m = inputs[1] // 보조 PD의 수

var adj: [[Int]] = Array(repeating: [], count: n+1)
var indegrees = Array(repeating: 0, count: n+1) // indegree

for _ in 0..<m {
    var inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    inputs.removeFirst()
    for i in 0..<inputs.count-1 {
        let a = inputs[i]
        let b = inputs[i+1]
        adj[a].append(b)
        indegrees[b] += 1
    }
}

//print(adj)
//print(indegrees)

var result = ""
func topologicalSort() {
    var queue: [Int] = []
    for i in 1...n {
        if indegrees[i] == 0 {
            queue.append(i)
        }
    }
    
    while true {
        if queue.isEmpty {
//            print(result.components(separatedBy: "\n").count)
            if result.components(separatedBy: "\n").count != n+1 {
                result = "0"
            }
            break
        }
        
        let x = queue.removeFirst()
        result += "\(x)\n"
        for y in adj[x] {
            indegrees[y] -= 1
            if indegrees[y] == 0 {
                queue.append(y)
            }
        }
    }
}

topologicalSort()
print(result)
