//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/8/24.
//

// 25757
// 임스와 함께하는 미니게임

import Foundation

let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let game = input[1]

var players = Set<String>()
var limit = 2

if game == "Y" {
    limit = 2
} else if game == "F" {
    limit = 3
} else {
    limit = 4
}

for _ in 0..<n {
    players.insert(readLine()!)
}

print(players.count / (limit-1))
