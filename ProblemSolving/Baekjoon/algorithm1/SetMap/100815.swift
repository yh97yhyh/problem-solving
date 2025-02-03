//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 숫자 카드
// 10815

import Foundation

let N = Int(readLine()!)! // 상근이 숫자 카드 개수
var cards = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = Int(readLine()!)!
let checkNums = readLine()!.split(separator: " ").map { Int(String($0))! }

var dict: [Int: Int] = [:]

for card in cards {
    dict[card] = 1
}

var answer = ""
for num in checkNums {
    if let val = dict[num] {
        answer += "1 "
    } else {
        answer += "0 "
    }
}

print(answer)
