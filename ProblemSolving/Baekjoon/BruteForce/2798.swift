//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 블랙잭
// 2798

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = inputs1[0]
let M = inputs1[1]

let cards = readLine()!.split(separator: " ").map { Int(String($0))! }
let len = cards.count
var picks: [Int] = []
var pickCards = Array(repeating: false, count: len)
var answer = 0

func recur() {
    if picks.count == 3 {
        let sum = picks.reduce(0, +)
        if sum <= M {
//            print(picks, sum)
            answer = max(answer, sum)
        }
        return
    }
    
    for i in 0..<len {
        if !pickCards[i] {
            picks.append(cards[i])
            pickCards[i] = true
            recur()
            picks.removeLast()
            pickCards[i] = false
        }
    }
}

recur()

print(answer)
