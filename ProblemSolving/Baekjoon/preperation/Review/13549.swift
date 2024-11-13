//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/13/24.
//

// 숨바꼭질 3
// 13549
// +1이 -1보다 먼저 오면 99%에서 틀림.. 대체 왜?

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var visited = Array(repeating: false, count: 100001)

func dijkstra() -> Int {
    var queue = [(n, 0)]
    visited[n] = true
    
    while true {
        if queue.isEmpty {
            return -1
        }
        queue.sort { $0.1 < $1.1 }
        
        let x = queue.removeFirst()
        
        if x.0 == k {
            return x.1
        }
        
        let y1 = x.0 * 2
        if y1 <= 100000 && !visited[y1] {
            queue.append((y1, x.1))
            visited[y1] = true
        }
        
        let y3 = x.0 - 1
        if y3 >= 0 && !visited[y3] {
            queue.append((y3, x.1+1))
            visited[y3] = true
        }
        
        let y2 = x.0 + 1
        if y2 <= 100000 && !visited[y2] {
            queue.append((y2, x.1+1))
            visited[y2] = true
        }
        
    }
}

print(dijkstra())
