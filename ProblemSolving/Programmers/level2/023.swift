//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 의상
// https://school.programmers.co.kr/learn/courses/30/lessons/42578

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var result = 1
    var dict: [String: Int] = [:]
    
    for clohte in clothes {
        let key = clohte[1]
        if dict.keys.contains(key) {
            dict[key]! += 1
        } else {
            dict[key] = 1
        }
    }
    
    for value in dict.values {
        result *= (value + 1) // 한 개 고르는 경우의 수 (value) + 안 고르는 경우의 수(1)
    }
    
    return result - 1 // 모두 안 고르는 경우의 수 빼기
}
