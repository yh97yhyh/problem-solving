//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/11/24.
//

// KCPC
// 3758

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = input[0] // 팀의 개수
    let k = input[1] // 문제의 개수
    let t = input[2] // 내 팀의 아이디
    let m = input[3] // 로그 엔트리 갯수
    
    var teams: [Int: [Int]] = [:] // 팀id, 문제번호, 점수
    var teamStats: [Int: (Int, Int, Int)] = [:] // 팀id, 총점수, 제출횟수, 마지막제출
    
    for entryIndex in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let teamId = input[0] // 팀 아이디
        let question = input[1] // 문제 번호
        var score = input[2] // 획득한 점수
        var preScore = 0
        
        if teams[teamId] == nil {
            teams[teamId] = Array(repeating: 0, count: k+1)
            teamStats[teamId] = (0, 0, 0)
        }
        
        if teams[teamId]![question] != 0 {
            let curScore = teams[teamId]![question]
            if score > curScore {
                teams[teamId]![question] = score
                preScore = curScore
            } else {
                score = 0
            }
        } else {
            teams[teamId]![question] = score
        }
        
        var stats = teamStats[teamId]!
        stats.0 += score - preScore
        stats.1 += 1
        stats.2 = entryIndex
        teamStats[teamId] = stats
    }
    
    // 총점수, 제출횟수, 마지막제출
    let sorted = teamStats.sorted {
        if $0.value.0 == $1.value.0 && $0.value.1 == $1.value.1 {
            return $0.value.2 < $1.value.2
        } else if $0.value.0 == $1.value.0 {
            return $0.value.1 < $1.value.1
        } else {
            return $0.value.0 > $1.value.0
        }
    }
    
    for sort in sorted.enumerated() {
        if sort.element.key == t {
            print(sort.offset + 1)
            break
        }
    }
    
}
