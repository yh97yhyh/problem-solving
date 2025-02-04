//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/4/25.
//

// 사탕 게임
// 3085

import Foundation

let n = Int(readLine()!)!
var boards: [[Character]] = []
var maxCount = 0
//var curBoards: [[Character]] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//var curVisited = visited

for _ in 0..<n {
    let input = Array(readLine()!)
    boards.append(input)
}

func checkMaxCandy() {
    for i in 0..<n {
        var rowCnt = 1
        var colCnt = 1
        
        for j in 1..<n {
            // 가로 방향 체크
            if boards[i][j] == boards[i][j-1] {
                rowCnt += 1
            } else {
                rowCnt = 1
            }
            maxCount = max(maxCount, rowCnt)
            
            // 세로 방향 체크
            if boards[j][i] == boards[j-1][i] {
                colCnt += 1
            } else {
                colCnt = 1
            }
            maxCount = max(maxCount, colCnt)
            
        }
        
    }
}

func mySwap(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) {
    let temp = boards[x1][y1]
    boards[x1][y1] = boards[x2][y2]
    boards[x2][y2] = temp
}


for i in 0..<n {
    for j in 0..<n {
        // 오른쪽 사탕과 교환
        if j+1 < n && boards[i][j] != boards[i][j+1] {
            mySwap(i, j, i, j+1)
            checkMaxCandy()
            mySwap(i, j, i, j+1)
        }
        
        // 아래 사탕과 교환
        if i+1 < n && boards[i][j] != boards[i+1][j] {
            mySwap(i, j, i+1, j)
            checkMaxCandy()
            mySwap(i, j, i+1, j)
        }
    }
}

print(maxCount)


//var curCount = 0
//var maxCount = 0
//let moves1 = [(-1, 0), (1, 0)] // 세로
//let moves2 = [(0, -1), (0, 1)] // 가로
//
//func recur1(_ i: Int, _ j: Int, _ char: Character) {
//    curVisited[i][j] = true
//    curCount += 1
//    
//    if curCount > maxCount {
//        maxCount = curCount
//    }
//    
//    if curCount == n {
//        print(n)
//        exit(0)
//    }
//    
//    for m in moves1 {
//        let next = (i+m.0, j)
//        if next.0 >= 0 && next.0 < n && next.1 >= 0 && next.1 < n && !curVisited[next.0][next.1] {
//            if curBoards[next.0][next.1] == char {
//                recur1(next.0, next.1, curBoards[next.0][next.1])
//                curCount -= 1
//            }
//        }
//    }
//}
//
//func recur2(_ i: Int, _ j: Int, _ char: Character) {
//    curVisited[i][j] = true
//    curCount += 1
//    
//    if curCount > maxCount {
//        maxCount = curCount
//    }
//    
//    if curCount == n {
//        print(n)
//        exit(0)
//    }
//    
//    for m in moves2 {
//        let next = (i, j+m.1)
//        if next.0 >= 0 && next.0 < n && next.1 >= 0 && next.1 < n && !curVisited[next.0][next.1] {
//            if curBoards[next.0][next.1] == char {
//                recur2(next.0, next.1, curBoards[next.0][next.1])
//                curCount -= 1
//            }
//        }
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        for k in 0..<3 {
//            switch k {
//            case 0:
//                if i-1 >= 0 && boards[i][j] != boards[i-1][j] {
//                    let temp = curBoards[i][j]
//                    curBoards[i][j] = curBoards[i-1][j]
//                    curBoards[i-1][j] = temp
//                }
//            case 1:
//                if i+1 < n && boards[i][j] != boards[i+1][j] {
//                    let temp = curBoards[i][j]
//                    curBoards[i][j] = curBoards[i+1][j]
//                    curBoards[i+1][j] = temp
//                }
//            case 2:
//                if j-1 >= 0 && boards[i][j] != boards[i][j-1] {
//                    let temp = curBoards[i][j]
//                    curBoards[i][j] = curBoards[i][j-1]
//                    curBoards[i][j-1] = temp
//                }
//            case 3:
//                if j+1 < n && boards[i][j] != boards[i][j+1] {
//                    let temp = curBoards[i][j]
//                    curBoards[i][j] = curBoards[i][j+1]
//                    curBoards[i][j+1] = temp
//                }
//            default:
//                continue
//            }
//            
//            recur1(i, j, curBoards[i][j])
//            curCount = 0
//            recur2(i, j, curBoards[i][j])
//            curCount = 0
//            curVisited = visited
//            curBoards = boards
//        }
//    }
//}
//
//print(maxCount)
