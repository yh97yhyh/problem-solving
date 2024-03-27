//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/16/24.
//

// 체스판 다시 칠하기
// 1018

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = inputs[0]
let N = inputs[1] // M * N

var chess: [[String]] = []

for i in 0..<M {
    let input = readLine()!.compactMap { String($0) }
    chess.append(input)
}
//print(chess)

var toPaint1: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: M)
var toPaint2: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: M)


for i in 0..<M {
    for j in 0..<N {
        if i % 2 == 0 {
            if j % 2 == 0 {
                if chess[i][j] != "B" {
                    toPaint1[i][j] = true
                } else {
                    toPaint2[i][j] = true
                }
            } else {
                if chess[i][j] != "W" {
                    toPaint1[i][j] = true
                } else {
                    toPaint2[i][j] = true
                }
            }
        } else {
            if j % 2 == 0 {
                if chess[i][j] != "W" {
                    toPaint1[i][j] = true
                } else {
                    toPaint2[i][j] = true
                }
            } else {
                if chess[i][j] != "B" {
                    toPaint1[i][j] = true
                } else {
                    toPaint2[i][j] = true
                }
            }
        }
    }
}

func checkPaintCount(startX: Int, startY: Int) -> Int {
    var count1 = 0
    var count2 = 0
    for i in startX..<startX+8 {
        for j in startY..<startY+8 {
            if toPaint1[i][j] {
                count1 += 1
            }
            if toPaint2[i][j] {
                count2 += 1
            }
        }
    }
    return min(count1, count2)
}

var answer = Int.max
for i in 0...M-8 {
    for j in 0...N-8 {
        answer = min(answer, checkPaintCount(startX: i, startY: j))
    }
}

print(answer)
