//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/5/25.
//

// 9079
// 동전 게임

import Foundation

let t = Int(readLine()!)!
let targetH: [Character] = Array(repeating: "H", count: 9)
let targetT: [Character] = Array(repeating: "T", count: 9)

let flips = [
    [0 ,1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
]

func bfs(_ start: [Character], _ target: [Character]) -> Int {
    var queue: [([Character], Int)] = [(start, 0)] // (cur, cnt)
    var visitedState = Set([start]) // 방문한 상태 저장
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let (curState, curCnt) = queue.removeFirst()
        
        if curState == target {
            return curCnt
        }
        
        for flip in flips {
            var nextState = curState
            for idx in flip {
                nextState[idx] = (nextState[idx] == "H") ? "T" : "H"
            }
            
            if !visitedState.contains(nextState) {
                visitedState.insert(nextState)
                queue.append((nextState, curCnt+1))
            }
        }
    }
    
    return -1

}

for _ in 0..<t {
    var coins: [[Character]] = []
    var board: [Character] = []
    
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ")
        coins.append(input.joined().map { $0 })
    }
    
    board = coins.flatMap { $0 }
    
    let resultH = bfs(board, targetH)
    let resultT = bfs(board, targetT)
    
    if resultH == -1 && resultT == -1 {
        print(-1)
    } else {
        if resultH == -1 {
            print(resultT)
        } else if resultT == -1 {
            print(resultH)
        } else {
            print(min(resultH, resultT))
        }
    }
}
