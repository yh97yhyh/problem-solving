//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/17/24.
//

// 창고형 다각형
// 2304

import Foundation

let n = Int(readLine()!)!

var locs: [(x: Int, y: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = input[0]
    let y = input[1]
    
    locs.append((x, y))
}

locs.sort(by: { $0.x < $1.x })
let maxCol = locs.max(by: { $0.y < $1.y})!
var answer = 0

var preX = locs[0].x
var maxY = 0
for loc in locs {
    if loc.x > maxCol.x {
        break
    }
    
    if loc.y >= maxY {
        answer += (loc.x - preX) * maxY
        maxY = loc.y
        preX = loc.x
    }
}

maxY = 0
preX = locs.last!.x
for loc in locs.reversed() {
    if loc.x < maxCol.x {
        break
    }
    
    if loc.y >= maxY {
        answer += (preX - loc.x) * maxY
        maxY = loc.y
        preX = loc.x
    }
}

answer += maxCol.y

print(answer)

