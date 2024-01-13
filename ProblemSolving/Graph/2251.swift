//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/13.
//

// 물통
// 2251

import Foundation

let bottleSizes = readLine()!.split(separator: " ").map { Int(String($0))! }
var bottleWaters = Array(repeating: 0, count: bottleSizes.count)
let len = bottleSizes.count
bottleWaters[len-1] = bottleSizes.last!

print(bottleSizes)
print(bottleWaters)

func bfs(_ i: Int) {
    
    for next in 0..<len {
        if i == next {
            continue
        }
        
    }
}

bfs(len-1)
