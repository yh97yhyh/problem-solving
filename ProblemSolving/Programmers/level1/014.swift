//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 음양 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/76501

import Foundation

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for i in 0..<absolutes.count {
        if signs[i] == true {
            sum += absolutes[i]
        } else {
            sum += -absolutes[i]
        }
    }
    
    return sum
}
