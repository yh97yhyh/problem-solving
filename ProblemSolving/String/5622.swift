//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 다이얼
// 5622

import Foundation

var str = readLine()!

func find(_ char: Character) -> Int {
    var count = 0
    switch char {
    case "A", "B", "C":
        count = 3
    case "D", "E", "F":
        count = 4
    case "G", "H", "I":
        count = 5
    case "J", "K", "L":
        count = 6
    case "M", "N", "O":
        count = 7
    case "P", "Q", "R", "S":
        count = 8
    case "T", "U", "V":
        count = 9
    case "W", "X", "Y", "Z":
        count = 10
    default:
        count = 0
    }
    return count
}

var sum = 0
for char in str {
    sum += find(char)
}
print(sum)
