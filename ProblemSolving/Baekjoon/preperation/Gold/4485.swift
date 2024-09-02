//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/2/24.
//

// 녹색 옷 입은 애가 젤다지?
// 4485
// [0][0] -> [n-1][n-1]로 이동
// 링크가 잃을 수 밖에 없는 최소 금액은 얼마일까?

import Foundation

let moves = [(-1, 0), (1, 0), (0, -1), (0, 1)] // 상 하 좌 우
var count = 1

while true {
    let n = Int(readLine()!)!
    
    if n == 0 {
        break
    }
    
    var graph: [[Int]] = []
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph.append(input)
    }
    
    let answer = bfs(graph, n)
    print("Problem \(count): \(answer)")
    count += 1
}

func bfs(_ graph: [[Int]], _ n: Int) -> Int {
    var costs = Array(repeating: Array(repeating: Int.max, count: n), count: n)
    costs[0][0] = graph[0][0]
    var queue: [(Int, Int)] = [(0, 0)]
    
    while true {
        if queue.isEmpty {
            break
        }
        queue.sort { $0.0 < $1.0 }
        
        let x = queue.removeFirst()
        let xCost = costs[x.0][x.1]
        
        for m in moves {
            let y = (x.0 + m.0, x.1 + m.1)
            if y.0 >= 0 && y.0 < n && y.1 >= 0 && y.1 < n {
                let yCost = graph[y.0][y.1]
                let sumCost = xCost + yCost
                if sumCost < costs[y.0][y.1] {
                    queue.append(y)
                    costs[y.0][y.1] = sumCost
                }
            }
        }
    }
    
//    print(costs)
    return costs[n-1][n-1]
}
