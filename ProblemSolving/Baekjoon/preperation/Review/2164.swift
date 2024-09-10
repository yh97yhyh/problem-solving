//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/9/24.
//

// 카드2
// 2164
// 카드가 한 장 남을 때까지 반복
// 제일 위에 있는 카드를 바닥에 버리고, 그 다음 제일 위에 있는 카드를 제일 아래에 있는 카드 밑으로 옮김

import Foundation

let n = Int(readLine()!)!
var cards = Array(1...n)

var i = 0
var count = n

if n == 1 {
    print(1)
} else if n == 2 {
    print(2)
} else {
    while true {
        // 제일 위에 있는 카드를 바닥에 버리고
        cards[i] = 0
        // 그 다음 제일 위에 있는 카드를 제일 아래에 있는 카드 밑으로 옮김
        let card = cards[i+1]
        cards.append(card)
        cards[i+1] = 0
        
        //
        if cards[count-2] == 0 {
            print(cards.last!)
            break
        }
        
        i += 2
        count += 1
    }
}
