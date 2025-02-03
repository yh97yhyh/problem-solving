//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/4/24.
//

// 카드2
// 2164

import Foundation

let n = Int(readLine()!)! // 1~n번의 카드
var cards: [Int] = Array(1...n)

var i = 0
var count = n

if n == 1 {
    print(1)
} else if n == 2 {
    print(2)
} else {
    while true {
        
        let card = cards[i+1]
        cards.append(card)
        cards[i] = 0
        cards[i+1] = 0
        
        if cards[count-2] == 0 {
            print(cards.last!)
            break
        }
        
        i += 2
        count += 1
    }
}
