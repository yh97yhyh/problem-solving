//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/9/24.
//

// 크로스컨트리
// 9017
// 상위 네 명의 주자 점수 합산

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let ranks = readLine()!.split(separator: " ").map { Int(String($0))! }
    var teamCnt: [Int: Int] = [:]
    var teams: [Int: (cnt: Int, score: Int, fiveth: Int)] = [:]
    
    for r in ranks {
        if teamCnt[r] == nil {
            teamCnt[r] = 1
        } else {
            teamCnt[r]! += 1
        }
    }
    
    var curRank = 1
    for r in ranks {
        if teamCnt[r]! >= 6 {
            if teams[r] == nil {
                teams[r] = (1, curRank, 0)
            } else {
                if teams[r]!.cnt == 4 && teams[r]!.fiveth == 0 {
                    teams[r]!.fiveth = curRank
                } else if teams[r]!.cnt < 4 {
                    let newCnt = teams[r]!.cnt + 1
                    let newScore = teams[r]!.score + curRank
                    teams[r]!.cnt = newCnt
                    teams[r]!.score = newScore
                }
            }
            curRank += 1
        }
    }
    
    let sorted = teams.sorted {
        if $0.value.score == $1.value.score {
            return $0.value.fiveth < $1.value.fiveth
        } else {
            return $0.value.score < $1.value.score
        }
    }
    
    print(sorted.first!.key)
}
