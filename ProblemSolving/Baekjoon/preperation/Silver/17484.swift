//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/11/24.
//

// 진우의 달 여행(Small)
// 17484

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var map: [[Int]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    map.append(input)
}

let directions: [(Int, Int)] = [(1, -1), (1, 0), (1, 1)]

var curCost = 0
var curDirections: [Int] = []
var curDepth = 0
var answer = Int.max

func recur(_ curLo: (Int, Int)) {
    if curDepth == n - 1 {
        answer = min(answer, curCost)
        return
    }
    
    for i in 0..<3 {
        let direction = directions[i]
        let nextLo = (curLo.0 + direction.0, curLo.1 + direction.1)
        
        if nextLo.0 >= 0 && nextLo.0 < n && nextLo.1 >= 0 && nextLo.1 < m {
            if curDirections.last != i || curDirections.isEmpty {
                curCost = curCost + map[nextLo.0][nextLo.1]
                curDepth += 1
                curDirections.append(i)
                
                recur(nextLo)
                
                curCost -= map[nextLo.0][nextLo.1]
                curDepth -= 1
                curDirections.removeLast()
            }
        }
    }
}

for i in 0..<m {
    curCost = map[0][i]
    curDepth = 0
    curDirections = []
    recur((0, i))
}

print(answer)
