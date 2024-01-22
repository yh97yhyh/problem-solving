//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/22.
//

// 2056
// 작업

import Foundation

let n = Int(readLine()!)! // 수행해야할 작업

var times: [Int] = Array(repeating: 0, count: n+1)
var totalTimes: [Int] = Array(repeating: 0, count: n+1)
var indegrees: [Int] = Array(repeating: 0, count: n+1)
var adj: [[Int]] = Array(repeating: [], count: n+1)

for i in 1...n {
    var inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let time = inputs.removeFirst()
    times[i] = time
    let preNumCount = inputs.removeFirst()
    indegrees[i] = preNumCount
    if inputs.isEmpty {
        continue
    }
    for j in 0..<preNumCount {
        let a = inputs[j]
        let b = i
        adj[a].append(b)
    }
}

//print(adj)
//print(indegress)
//print(times)

func topologicalSort(_ start: Int) {
    var queue: [Int] = []
    for i in 1...n {
        if indegrees[i] == 0 {
            queue.append(i)
            totalTimes[i] = times[i]
        }
    }
//    totalTimes[start] = times[start]
    
    while true {
        if queue.isEmpty {
            break
        }
        let x = queue.removeFirst()
        for y in adj[x] {
            indegrees[y] -= 1
            totalTimes[y] = max(totalTimes[y], totalTimes[x] + times[y])
            if indegrees[y] == 0 {
                queue.append(y)
            }
        }
    }
}

topologicalSort(1)
print(totalTimes.max()!)
