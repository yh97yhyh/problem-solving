//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/11/24.
//

// 수 이어쓰기
// 1515

import Foundation

let nums = Array(readLine()!)
let len = nums.count

var n = 1
var i = 0

while true {
    let strN = String(n)
    
    for s in strN {
        if s == nums[i] {
            i += 1
            
            if i == len {
                print(n)
                exit(0)
            }
        }
    }
    
    n += 1
}
