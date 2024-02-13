//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/14.
//

// 숨바꼭질
// 1697

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 수빈이 위치
let k = inputs[1] // 동생 위치

var visited = Array(repeating: false, count: 100001)
var result = 0

func bfs(_ start: Int) {
    var needVisited = [[start, 0]]
    
    while true {
        if needVisited.isEmpty {
            break
        }
        
        let pop = needVisited.removeFirst()
        let popLocate = pop[0]
        let second = pop[1]
        
        if popLocate == k {
            result = second
            break
        }
        
        for i in 0..<3 {
            var next = popLocate
            switch i {
            case 0:
                next = popLocate + 1
            case 1:
                next = popLocate - 1
            case 2:
                next = popLocate * 2
            default:
                continue
            }
            
            if next >= 0 && next <= 100000 && !visited[next] {
                visited[next] = true
                needVisited.append([next, second+1])
            }
        }
    }
}

bfs(n)
print(result)
