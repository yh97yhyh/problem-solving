//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/22/24.
//

// [3차] n진수 게임
// https://school.programmers.co.kr/learn/courses/30/lessons/17687

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var turns: [Int] = []
    for i in 0..<t {
        turns.append(m*i + p)
    }
    let last = turns.last!

    var num = 0
    var game = ""
    var gameCount = 0
    while true {
        if gameCount > last { // 직접 game.count로 접근하면 시간초과!!
            break
        }
        
        let numString = String(num, radix: n)
        game += numString
        gameCount += numString.count
        num += 1
    }
    
    var result = ""
    let gameArr = Array(game)
    for turn in turns {
        // let index = game.index(game.startIndex, offsetBy: turn-1)
        result += String(gameArr[turn-1]).uppercased()
    }
    
    return result
}
