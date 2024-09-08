//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/8/24.
//

// 등수 구하기
// 1205
// 점수 n개가 비오름차순으로 주어짐


import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let newScore = input[1]
let p = input[2]

if n == 0 {
    print(1)
} else {
    var scores = readLine()!.split(separator: " ").map { Int(String($0))! }
    var curRank = 0
    var sameCnt = 0
    var preScore = -1
    
    var isFound = false
    for i in 0..<n {
        var curScore = scores[i]
        
        if newScore > scores[i] {
            curScore = newScore
            isFound = true
        }
        
        if preScore == curScore {
            sameCnt += 1
        } else {
            curRank += sameCnt + 1
            sameCnt = 0
        }
        
        if isFound {
            break
        }
        
        preScore = curScore
    }
    
    if !isFound && n < p {
        if preScore == newScore {
            sameCnt += 1
        } else {
            curRank += sameCnt + 1
            sameCnt = 0
        }
        
        isFound = true
    }
    
    isFound ? print(curRank) : print(-1)
}
