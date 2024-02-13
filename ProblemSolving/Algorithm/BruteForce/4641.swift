//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/6/24.
//

// Doubles
// 4641

import Foundation

while true {
    let str = readLine()!
    
    if str == "-1" {
        break
    }
    let nums = str.split(separator: " ").map { Int(String($0))! }
    
    var result = 0
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i == j {
                continue
            }
            if nums[j] == nums[i] * 2 {
                result += 1
            }
        }
    }
    print(result)
}
