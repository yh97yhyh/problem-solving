//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/30.
//

// 1516
// 게임 개발

import Foundation

let n = Int(readLine()!)! // 건물 종류의 수

var adj: [[Int]] = Array(repeating: [], count: n+1)
var indegrees: [Int] = Array(repeating: 0, count: n+1)
var times: [Int] = Array(repeating: 0, count: n+1)
var donetimes: [Int] = Array(repeating: 0, count: n+1)
var toVisits: [Int] = []

for i in 1..<n+1 {
    var firsts = readLine()!.split(separator: " ").map { Int(String($0))! }
    times[i] = firsts.removeFirst()
    if firsts.count > 1 {
        for first in firsts {
            if first == -1 {
                break
            }
            adj[first].append(i)
            indegrees[i] += 1
        }
    } else {
        toVisits.append(i)
        donetimes[i] = times[i]
    }
}

func topologicalSort() {
    while true {
        if toVisits.isEmpty {
            break
        }
        
        let x = toVisits.removeFirst()
        for y in adj[x] {
            indegrees[y] -= 1
            donetimes[y] = max(donetimes[y], donetimes[x] + times[y])
            if indegrees[y] == 0 {
                toVisits.append(y)
            }
        }
    }
}

topologicalSort()

var result = ""
for i in 1..<donetimes.count {
    result += "\(donetimes[i])\n"
}
print(result)

//print(adj)
//print(indegrees)
//print(times)
