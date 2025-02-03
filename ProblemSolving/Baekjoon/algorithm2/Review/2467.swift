//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/21/24.
//

// 용액
// 2467
// 용액이 오름차순으로 입력됨

import Foundation

let n = Int(readLine()!)!
let liquies = readLine()!.split(separator: " ").map { Int(String($0))! }

if liquies[0] >= 0 {
    print("\(liquies[0]) \(liquies[1])")
    exit(0)
} else if liquies[n-1] < 0 {
    print("\(liquies[n-2]) \(liquies[n-1])")
    exit(0)
}

var answer = (0, 0)
var standard = Int.max

func twoPinter() {
    var left = 0
    var right = n-1
    
    while true {
        if standard == 0 || left >= right {
            break
        }
        
        let leftNum = liquies[left]
        let rightNum = liquies[right]
        var cur = leftNum + rightNum
        
        if abs(cur) < standard {
            answer = (leftNum, rightNum)
            standard = abs(cur)
        }
        
        if cur > 0 {
            right -= 1
        } else {
            left += 1
        }
    }
}

twoPinter()
print("\(answer.0) \(answer.1)")
