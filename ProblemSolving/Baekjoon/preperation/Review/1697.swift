//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/13/24.
//

// 숨바꼭질
// 1697

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 수빈이 위치
let k = input[1] // 동생 위치
var visited = Array(repeating: false, count: 100001)

func bfs() -> Int {
    var queue = [(n, 0)]
    
    while true {
        if queue.isEmpty {
            return -1
        }
        
        let x = queue.removeFirst()
        
        if x.0 == k {
            return x.1
        }
        
        // 2x
        let next1 = x.0 * 2
        if next1 <= 100000 && !visited[next1] {
            queue.append((next1, x.1+1))
            visited[next1] = true
        }
        
        // +1
        let next2 = x.0 + 1
        if next2 <= 100000 && !visited[next2] {
            queue.append((next2, x.1+1))
            visited[next2] = true
        }

        // -1
        let next3 = x.0 - 1
        if next3 >= 0 && !visited[next3] {
            queue.append((next3, x.1+1))
            visited[next3] = true
        }
    }
}

print(bfs())
