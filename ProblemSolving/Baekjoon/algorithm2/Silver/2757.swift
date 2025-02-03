//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/1/24.
//

// 임스와 함께하는 미니게임
// 25757

import Foundation

let input = readLine()!.split(separator: " ")
let n = Int(String(input[0]))!
let game = String(input[1])

var players: Set<String> = []

var playerNum = 2

switch game {
    case "Y": playerNum = 2
    case "F": playerNum = 3
    case "O": playerNum = 4
    default: playerNum = 2
}

for _ in 0..<n {
    players.insert(readLine()!)
}

print(players.count / (playerNum-1))
