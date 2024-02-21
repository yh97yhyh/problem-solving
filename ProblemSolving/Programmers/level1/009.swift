//
//  009.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 문자열 내 p와 y의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func solution(_ s:String) -> Bool {
    var pCount = 0
    var yCount = 0
    
    var str = s.lowercased()
    
    for c in str {
        if c == "p" {
            pCount += 1
        } else if c == "y" {
            yCount += 1
        }
    }

    return pCount == yCount
}
