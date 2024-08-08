//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/1/24.
//

// 숨바꼭질 3
// 13549

// *2, -1, +1의 순서를 지켜야한다!

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var dist = Array(repeating: -1, count: 100001)

let n = input[0] // 수빈이의 위치
let k = input[1] // 동생의 위치

func bfs(_ start: Int) -> Int {
    var queue: [Int] = []
    queue.append(start)
    dist[start] = 0
    
    while true {
        if queue.isEmpty {
            return dist[k]
        }
        
        let x = queue.removeFirst()
        if x == k {
            return dist[k]
        }
        
        // 2 * x
        let y = x * 2
        if y >= 0 && y <= 100000 && dist[y] == -1 {
            queue.append(y)
            dist[y] = dist[x]
//            if dist[y] == -1 {
//                dist[y] = dist[x]
//            } else {
//                dist[y] = min(dist[y], dist[x] + 1)
//            }
        }
        
        // x + 1, x - 1
        for y in [x - 1, x + 1] {
            if y >= 0 && y <= 100000 && dist[y] == -1 {
                queue.append(y)
                dist[y] = dist[x] + 1
//                if dist[y] == -1 {
//                    dist[y] = dist[x] + 1
//                } else {
//                    dist[y] = min(dist[y], dist[x] + 1)
//                }
            }
        }
    }
    
    return -1
}

print(bfs(n))
