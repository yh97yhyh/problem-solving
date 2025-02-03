//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/17/24.
//

// 용액
// 2467
// 산성이나 알칼리성만으로도 이루어질 수 있음

import Foundation

let n = Int(readLine()!)!
let liquids = readLine()!.split(separator: " ").map { Int(String($0))! }

var left = 0
var right = n-1
var min = Int.max
var answer: (Int, Int) = (0, 0)

if liquids[0] >= 0 { // 모두 산성
    print("\(liquids[0]) \(liquids[1])")
} else if liquids[n-1] < 0 { // 모두 알칼리성
    print("\(liquids[n-2]) \(liquids[n-1])")
} else {
    while true {
        if min == 0 || left >= right {
            break
        }
        
        let cur = liquids[left] + liquids[right]
        
        if abs(cur) < min {
            min = abs(cur)
            answer = (liquids[left], liquids[right])
        }
        
        if cur > 0 {
            right -= 1
        } else {
            left += 1
        }
    }
    
    print("\(answer.0) \(answer.1)")
}
