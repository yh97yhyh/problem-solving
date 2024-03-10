//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

// 푸드 파이트 대회
// https://school.programmers.co.kr/learn/courses/30/lessons/134240

import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    
    for i in 1..<food.count {
        let addCount = food[i] / 2
        for j in 0..<addCount {
            result += "\(i)"
        }
    }
    
    var reversed = String(result.reversed())
    result = result + "0\(reversed)"
    
    return result
}
