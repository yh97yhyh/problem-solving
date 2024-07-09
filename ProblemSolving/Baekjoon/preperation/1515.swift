//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/7/24.
//

// 수 이어 쓰기
// 1515

import Foundation

let nums = readLine()!

var n = 1
var i = nums.startIndex

while true {
    let strN = String(n)
    
    for s in strN {
        if s == nums[i] {
            i = nums.index(after: i) // i+= 1
            
            if i == nums.endIndex  {
                print(n)
                exit(0)
            }
        }
    }
    
    n += 1
}
