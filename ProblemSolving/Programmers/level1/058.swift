//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/22/24.
//

// [1차] 다트 게임
// https://school.programmers.co.kr/learn/courses/30/lessons/17682

import Foundation

func solution(_ dartResult:String) -> Int {
    let len = dartResult.count
    var scores = [-1, -1, -1]
    var turn = 0
    var scoreStr = ""
    var isStartTurn = true
    
    for result in dartResult {
        if result.isNumber {
            if !isStartTurn {
                isStartTurn = true
                turn += 1
            }
            scoreStr += String(result)
        } else {
            if scores[turn] == -1 {
                scores[turn] = Int(scoreStr)!
                scoreStr = ""
            }
            isStartTurn = false
            
            let score = scores[turn]
            if result == "S" {
                scores[turn] = score
            } else if result == "D" {
                scores[turn] = score * score
            } else if result == "T" {
                scores[turn] = score * score * score
            } else if result == "*" {
                if turn == 0 {
                    scores[0] = score * 2
                } else {
                    scores[turn-1] = scores[turn-1] * 2
                    scores[turn] = score * 2
                }
            } else if result == "#" {
                scores[turn] = score * -1
            }
        }
        
//        print(result, scores)
    }
    
    
    return scores.reduce(0, +)
}

print(solution("1S2D*3T")) // 37
print(solution("1D2S#10S"))
print(solution("1D2S0T")) // 3
print(solution("1S*2T*3S")) // 23
print(solution("1D#2S*3S")) // 5
print(solution("1T2D3D#")) // -4
print(solution("1D2S3T*")) // 59
