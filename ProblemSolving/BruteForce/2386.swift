//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 도비의 영어 공부
// 2386

import Foundation

while true {
    var count = 0
    var str = readLine()!
    if str == "#" {
        break
    }
    
    let target = str.removeFirst()
    
    for c in str {
        if c.lowercased() == String(target) {
            count += 1
        }
    }
    
    print("\(target) \(count)")
}

