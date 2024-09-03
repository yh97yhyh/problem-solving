//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/3/24.
//

// 알파벳
// 1987
// 시간초과 -> 비트마스크

import Foundation

let rc = readLine()!.split(separator: " ").map { Int($0)! }
let (r, c) = (rc[0], rc[1])
let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var map = [[Int]]()

for _ in 0..<r {
    let input = readLine()!.map { Int($0.asciiValue ?? 65) - 65 }
    map.append(input)
}

var count = 0

func dfs(_ i: Int, _ j: Int, _ depth: Int, _ bitmask: Int) {
    count = max(count, depth)
    
    for direction in directions {
        let k = i + direction.0
        let l = j + direction.1
        
        if k >= 0 && k < r && l >= 0 && l < c {
            let newBitmask = 1 << map[k][l]
            
            if bitmask & newBitmask == 0 {
                dfs(k, l, depth+1, bitmask | newBitmask)
            }
        }
    }
}

let first = map[0][0]
dfs(0, 0, 1, 1 << map[0][0])

print(count)

//import Foundation
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let r = input[0] // 세로 r칸
//let c = input[1] // 가로 c칸
//
//let moves = [(-1, 0), (1, 0), (0, -1), (0, 1)] // 상 하 좌 우
////var visited = Set<Character>()
//var visited: [Character: Int] = [:]
//var graph: [[Character]] = []
//var maxCount = 1
//var curCount = 1
//
//for _ in 0..<r {
//    graph.append(Array(readLine()!))
//}
//
//func dfs(_ cur: (Int, Int)) {
//    maxCount = max(maxCount, curCount)
//    
//    for m in moves {
//        let next = (cur.0 + m.0, cur.1 + m.1)
//        if next.0 >= 0 && next.0 < r && next.1 >= 0 && next.1 < c {
//            let char = graph[next.0][next.1]
//            if visited[char] == nil {
//                visited[char] = 1
//                curCount += 1
//                dfs((next.0, next.1))
//                visited[char] = nil
//                curCount -= 1
//            }
//            
////            if !visited.contains(char) {
////                visited.insert(char)
////                curCount += 1
////                dfs((next.0, next.1))
////                visited.remove(char)
////                curCount -= 1
////            }
//        }
//    }
//}
//
//visited[graph[0][0]] = 1
////visited.insert(graph[0][0])
//dfs((0, 0))
//print(maxCount)
