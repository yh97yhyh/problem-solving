//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/16.
//

// ACM Craft
// 1005
// Swift 시간초과 난다..

import Foundation


let t = Int(readLine()!)! // 테스트케이스 개수 t

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs1[0] // 건물 개수 n
let k = inputs1[1] // 건설 순서 규칙 개수 k

var times: [Int] = [0]
var doneTimes: [Int] = Array(repeating: 0, count: n+1)
var adj: [[Int]] = Array(repeating: [], count: n+1)
var indegrees: [Int] = Array(repeating: 0, count: n+1)

let inputs2 = readLine()!.split(separator: " ").map { Int(String($0))! } // 건물당 건설에 걸리는 시간
for time in inputs2 {
    times.append(time)
}
for _ in 0..<k {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    adj[a].append(b)
    indegrees[b] += 1
}
let finishNode = Int(readLine()!)!

func topologicalSort() {
    var queue: [Int] = []
    for i in 1..<n+1 {
        if indegrees[i] == 0 {
            queue.append(i)
            doneTimes[i] = times[i]
        }
    }
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        
        if x == finishNode {
            break
        }
        
        for y in adj[x] {
            indegrees[y] -= 1
            doneTimes[y] = max(doneTimes[y], doneTimes[x] + times[y])
            if indegrees[y] == 0 {
                queue.append(y)
            }
        }
    }
}


//print(times)
//print(adj)
//print(indegrees)
topologicalSort()
//print(order)
print(doneTimes[finishNode])


