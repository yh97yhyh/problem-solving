//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/27/24.
//

// 26069
// 붙임성 좋은 총총이

import Foundation

let N = Int(readLine()!)!

var dances: [String: Int] = [:]
var answer = 1

for _ in 0..<N {
    let inputs = readLine()!.split(separator: " ")
    let a = String(inputs[0])
    let b = String(inputs[1])
    
    if a == "ChongChong" {
        dances[b] = 1
    } else if b == "ChongChong" {
        dances[a] = 1
    }
    
    if let a1 = dances[a] {
        dances[b] = 1
    } else if let b = dances[b] {
        dances[a] = 1
    }
}

print(dances.keys.count)
