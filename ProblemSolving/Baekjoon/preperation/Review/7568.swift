//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/5/24.
//

// 덩치
// 7568

import Foundation

let n = Int(readLine()!)!
var ranks = Array(repeating: 0, count: n)
var peoples: [(w: Int, h: Int)] = []
var answer = ""

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    peoples.append((input[0], input[1]))
}

for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if i == j {
            continue
        }
        
        if peoples[j].h > peoples[i].h && peoples[j].w > peoples[i].w {
            rank += 1
        }
    }
    answer += "\(rank) "
}

print(answer)
