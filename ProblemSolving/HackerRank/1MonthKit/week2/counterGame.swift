//
//  counterGame.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Counter game
// https://www.hackerrank.com/challenges/one-month-preparation-kit-counter-game/problem

// 2의 제곱수면 2로 나눔
// 아니면 k를 빼서 2의 제곱수가 되도록 수를 줄임
// 1을 만드는 사람이 게임을 이김
// Louise가 항상 먼저 시작


import Foundation

func counterGame(n: Int) -> String {
    // Write your code here
    var turn = 1
    var num = n
    while true {
        if checkIsPowerOfTwo(num) {
            num /= 2
        } else {
            let powerOfTwoNum = makePowerOfTwo(num)
            num = num - powerOfTwoNum
        }
        
        if num == 1 {
            break
        }
        
        turn += 1
    }
    
    return turn % 2 == 0 ? "Richard" : "Louise"
}

func makePowerOfTwo(_ n: Int) -> Int {
    var result = 1
    while true {
        if (result << 1) >= n {
            break
        }
        result <<= 1
    }
    return result
}

func checkIsPowerOfTwo(_ n: Int) -> Bool {
    if n <= 0 {
        return false
    }
    
    return (n & (n - 1)) == 0
}
