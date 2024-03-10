//
//  043.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

// 두 개 뽑아서 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            let sum = numbers[i] + numbers[j]
            if !result.contains(sum) {
                result.append(numbers[i] + numbers[j])
            }
        }
    }
    
    return result.sorted()
}
