//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/15/24.
//

// 빗물
// 14719
// https://hwan-shell.tistory.com/276

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let h = input[0]
let w = input[1]

let blocks = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = 0

for i in 1..<w-1 { // 제일 왼쪽, 오른쪽은 빗물 못 담아서 제외
    let left = blocks[0...i].max() ?? 0 //내 기준 가장 큰 왼쪽
    let right = blocks[i+1..<w].max() ?? 0 // 내 기준 가장 큰 오른쪽
    let l = min(left, right) // 그중 최솟값
    if l > blocks[i] {
        answer += l - blocks[i]
    }
}

print(answer)
