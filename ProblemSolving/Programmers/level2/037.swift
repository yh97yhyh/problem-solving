//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 방문 길이
// https://school.programmers.co.kr/learn/courses/30/lessons/49994

import Foundation

var moves: [(Int, Int, Int, Int)] = []
func solution(_ dirs:String) -> Int {
    var answer = 0
    var cur = (0, 0)
    
    for dir in dirs {
        var move = (0, 0)
        switch dir {
        case "U":
            move = (0, 1)
        case "D":
            move = (0, -1)
        case "L":
            move = (-1, 0)
        case "R":
            move = (1, 0)
        default: break
        }
        
        let x = cur.0 + move.0
        let y = cur.1 + move.1
        
        if x >= -5 && x <= 5 && y >= -5 && y <= 5 {
            if checkIsFirst(cur, (x, y)) {
                answer += 1
            }
            moves.append((cur.0, cur.1, x, y))
            cur = (x, y)
        }
    }
    
    return answer
}

func checkIsFirst(_ cur: (Int, Int), _ next: (Int, Int)) -> Bool {
    for move in moves {
        if cur.0 == move.0 && cur.1 == move.1 && next.0 == move.2 && next.1 == move.3 {
            return false
        } else if cur.0 == move.2 && cur.1 == move.3 && next.0 == move.0 && next.1 == move.1 {
            return false
        }
    }
    return true
}
