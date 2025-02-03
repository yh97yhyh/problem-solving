//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 18404
// 현명한 나이트

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // n x n 체스판
let m = inputs[1] // m개의 상대편 말들의 위치

let k = readLine()!.split(separator: " ").map { Int(String($0))! } // 나이트 위치

var es: [[Int]] = [] // 상대 말들의 위치
for _ in 0..<m {
    let e = readLine()!.split(separator: " ").map { Int(String($0))! }
    es.append(e)
}

var chess = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

func sol() {
    var queue: [[Int]] = []
    queue.append(k)
    
    let moves = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2,-1], [2, 1]]
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        
        for move in moves {
            let y = [x[0] + move[0], x[1] + move[1]]
            if y[0] > 0 && y[0] <= n && y[1] > 0 && y[1] <= n && chess[y[0]][y[1]] == 0 {
                queue.append(y)
                chess[y[0]][y[1]] = chess[x[0]][x[1]] + 1
            }
        }
//        print(queue)
    }
}

sol()
//print(chess)

var result = ""
for e in es {
    result += "\(chess[e[0]][e[1]]) "
}
print(result)
