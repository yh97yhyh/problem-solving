//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 나이트의 이동
// 7562

import Foundation

let T = Int(readLine()!)!
let moves: [(Int, Int)] = [
    (-2, 1), (-1, 2), (1, 2), (2, 1),
    (-2, -1), (-1, -2), (1, -2), (2, -1)
]

var l = 0
var checked: [[Bool]] = []
var target = (0, 0)

for _ in 0..<T {
    l = Int(readLine()!)! // 체스판 한 변의 길이
    checked = Array(repeating: Array(repeating: false, count: l), count: l)
    let input1 = readLine()!.split(separator: " ").map { Int(String($0))! } // 현재 칸
    let input2 = readLine()!.split(separator: " ").map { Int(String($0))! } // 이동 칸
    let start = (input1[0], input1[1])
    target = (input2[0], input2[1])
//    dfs(start, target, 0)
    print(bfs(start))
}

func bfs(_ start: (Int, Int)) -> Int {
    var distance = Array(repeating: Array(repeating: -1, count: l), count: l)
    var queue: [(Int, Int)] = []
    queue.append(start)
    distance[start.0][start.1] = 0
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        if x == target {
            break
        }
        
        for move in moves {
            let next = (x.0 + move.0, x.1 + move.1)
            if (next.0 >= 0 && next.0 < l && next.1 >= 0 && next.1 < l) && distance[next.0][next.1] == -1 {
                queue.append(next)
                distance[next.0][next.1] = distance[x.0][x.1] + 1
            }
        }
    }
    
    return distance[target.0][target.1]
}


//func dfs(_ cur: (Int, Int), _ target: (Int, Int), _ count: Int) {
//    if cur == target {
//        print(count)
//        return
//    }
//    
//    for move in moves {
//        let next = (cur.0 + move.0, cur.1 + cur.1)
//        if (next.0 >= 0 && next.0 < l && next.1 >= 0 && next.1 < l) && !checked[next.0][next.1] {
//            checked[next.0][next.1] = true
//            dfs(next, target, count+1)
//        }
//    }
//}
