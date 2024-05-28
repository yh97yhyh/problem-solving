//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// RGB거리
// 1149

import Foundation

let N = Int(readLine()!)!
var rgbCost = Array(repeating: [0, 0, 0], count: N)
var dy = Array(repeating: Array(repeating: 0, count: 3), count: N)

for i in 0..<N {
    rgbCost[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 0..<N {
    if i == 0 {
        dy[0][0] = rgbCost[0][0]
        dy[0][1] = rgbCost[0][1]
        dy[0][2] = rgbCost[0][2]
    } else {
        dy[i][0] = min(dy[i-1][1], dy[i-1][2]) + rgbCost[i][0]
        dy[i][1] = min(dy[i-1][0], dy[i-1][2]) + rgbCost[i][1]
        dy[i][2] = min(dy[i-1][0], dy[i-1][1]) + rgbCost[i][2]
    }
}

print(dy[N-1].min()!)

//var dy = Array(repeating: Array(repeating: (0, 0), count: 3), count: N)
//
//for i in 0..<N {
//    let cost = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let rCost = cost[0]
//    let gCost = cost[1]
//    let bCost = cost[2]
//    
//    if i == 0 {
//        dy[i][0] = (rCost, 0)
//        dy[i][1] = (gCost, 1)
//        dy[i][2] = (bCost, 2)
//    } else {
//        for j in 0..<3 {
//            let preCost = dy[i-1][j].0
//            let preColor = dy[i-1][j].1
//            switch preColor {
//            case 0:
//                let minCost = min(gCost, bCost)
//                let color = gCost == minCost ? 1 : 2
//                dy[i][j] = (minCost + preCost, color)
//            case 1:
//                let minCost = min(rCost, bCost)
//                let color = rCost == minCost ? 0 : 2
//                dy[i][j] = (minCost + preCost, color)
//            case 2:
//                let minCost = min(rCost, gCost)
//                let color = rCost == minCost ? 0 : 1
//                dy[i][j] = (minCost + preCost, color)
//            default:
//                continue
//            }
//        }
//    }
//}
//
//
//var answer = Int.max
//for i in 0..<3 {
//    let cur = dy[N-1][i].0
//    answer = min(answer, cur)
//}
