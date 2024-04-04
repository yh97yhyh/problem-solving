//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 롤케이크 자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/132265

import Foundation

func solution(_ topping:[Int]) -> Int {
    var left: [Int: Int] = [:]
    var right: [Int: Int] = [:]
    var answer = 0
    
    for top in topping {
        if let val = right[top] {
            right[top]! += 1
        } else {
            right[top] = 1
        }
    }

    for i in 0..<topping.count {
        let top = topping[i]
        if let leftVal = left[top] {
            left[top]! += 1
        } else {
            left[top] = 1
        }
        
        if let rightVal = right[top] {
            if rightVal == 1 {
                right.removeValue(forKey: top)
            } else {
                right[top]! -= 1
            }
        }
        
        if left.count == right.count {
            // print(i, left, right)
            answer += 1
        }
    }
    
    return answer
}
