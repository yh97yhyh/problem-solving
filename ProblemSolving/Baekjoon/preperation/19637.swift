//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// IF문 좀 대신 써줘
// 19637

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 칭호 갯수
let m = input[1] // 캐릭터 갯수

var titlePowers: [(title: String, power: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let title = String(input[0])
    let power = Int(input[1])!
    
    if titlePowers.isEmpty || titlePowers.last!.power < power {
        titlePowers.append((title, power))
    }
}

var answer = ""
for _ in 0..<m {
    let target = Int(readLine()!)!
    
    var start = 0
    var end = titlePowers.count - 1
    
    while true {
        if start >= end {
            break
        }
        
        let mid = (start + end) / 2
        
        if titlePowers[mid].power >= target {
            end = mid
        } else {
            start = mid + 1
        }
    }
    
    answer += "\(titlePowers[start].title)\n"
}

print(answer)
