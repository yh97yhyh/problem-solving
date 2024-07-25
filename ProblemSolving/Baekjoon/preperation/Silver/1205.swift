//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/2/24.
//

// 등수 구하기
// 1205

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input1[0]
let newScore = input1[1]
let p = input1[2] // 랭킹 리스트에 올라갈 수 있는 점수의 개수

if n == 0 {
    print("1")
} else {
    var isAdded = false
    let scores = readLine()!.split(separator: " ").map { Int(String($0))! } // 비오름차순
    var ranks: [(Int, Int)] = []
    
    var sameCount = 0
    var preScore = -1
    var curRank = 0
    
    for i in 0..<n {
        let score = scores[i]
        
        if newScore > score {
            if newScore == preScore {
                sameCount += 1
            } else {
                curRank += 1
                curRank += sameCount
                sameCount = 0
            }
            ranks.append((newScore, curRank))
            
            isAdded = true
            break
        }
        
        if preScore == score {
            sameCount += 1
        } else {
            curRank += 1
            curRank += sameCount
            sameCount = 0
        }
        ranks.append((score, curRank))
        
        preScore = score
    }
    
    if isAdded {
        print(ranks.last!.1)
    } else {
        if ranks.count < p {
            if newScore == preScore {
                sameCount += 1
            } else {
                curRank += 1
                curRank += sameCount
                sameCount = 0
            }
            ranks.append((newScore, curRank))
            print(ranks.last!.1)
        } else {
            print("-1")
        }
    }
}
